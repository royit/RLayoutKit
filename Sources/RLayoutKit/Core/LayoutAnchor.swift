//
//  LayoutAnchor.swift
//  RLayoutKit
//
//  Created by roy on 2019/3/11.
//

import Foundation

#if os(macOS)
import AppKit
#elseif os(iOS)
import UIKit
#endif

/**
A Structure for containing subclasses of type
[NSLayoutAnchor](https://developer.apple.com/documentation/uikit/nslayoutconstraint),
used by combining AnchorCompatible
- Example
````
extension NSLayoutXAxisAnchor: AnchorCompatible {}

let view = View()
let anAnchorWrapper: AnchorWrapper<NSLayoutXAxisAnchor> = view.leadingAnchor.anchor
````
*/
@available(iOS 9.0, *)
public struct AnchorWrapper<A, Anchor: NSLayoutAnchor<A>> {
	
	public let anchor: Anchor
	public let superAnchor: Anchor?
	public var constant: CGFloat?
	public var multiplier: CGFloat?
	
	public init(
		anchor: Anchor,
		superAnchor: Anchor? = nil,
		constant: CGFloat? = nil,
		multiplier: CGFloat? = nil
	) {
		
		self.anchor = anchor
		self.superAnchor = superAnchor
		self.constant = constant
		self.multiplier = multiplier
	}
}

@available(iOS 9.0, *)
extension AnchorWrapper {
	public static func + (lsh: AnchorWrapper, rsh: CGFloat) -> AnchorWrapper {
		
		var wrapper = lsh
		wrapper.constant = (lsh.constant ?? 0) + rsh
		return wrapper
	}
	
	@discardableResult
	public static func - (lsh: AnchorWrapper, rsh: CGFloat) -> AnchorWrapper {
		
		var wrapper = lsh
		wrapper.constant = (lsh.constant ?? 0) - rsh
		return wrapper
	}
	
	@discardableResult
	public static func * (lsh: AnchorWrapper, rsh: CGFloat) -> AnchorWrapper {
		
		var wrapper = lsh
		wrapper.multiplier = (lsh.multiplier ?? 1) * rsh
		return wrapper
	}
}
