//
//  ViewAnchors.swift
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

@available(iOS 9.0, *)
extension RLayoutKitWrapper where Base: View {
    public var leading: AnchorWrapper<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return .init(base.leadingAnchor,
                     superAnchor: base.superView?.leadingAnchor)
    }
    
    public var trailing: AnchorWrapper<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return .init(base.trailingAnchor,
                     superAnchor: base.superView?.trailingAnchor)
    }
    
    public var left: AnchorWrapper<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return .init(base.leftAnchor,
                     superAnchor: base.superView?.leftAnchor)
    }
    
    public var right: AnchorWrapper<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return .init(base.rightAnchor,
                     superAnchor: base.superView?.rightAnchor)
    }
    
    public var top: AnchorWrapper<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return .init(base.topAnchor,
                     superAnchor: base.superView?.topAnchor)
    }
    
    public var bottom: AnchorWrapper<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return .init(base.bottomAnchor,
                     superAnchor: base.superView?.bottomAnchor)
    }
    
    public var width: AnchorWrapper<NSLayoutDimension, NSLayoutDimension> {
        return .init(base.widthAnchor,
                     superAnchor: base.superView?.widthAnchor)
    }
    
    public var height: AnchorWrapper<NSLayoutDimension, NSLayoutDimension> {
        return .init(base.heightAnchor,
                     superAnchor: base.superView?.heightAnchor)
    }
    
    public var centerX: AnchorWrapper<NSLayoutXAxisAnchor, NSLayoutXAxisAnchor> {
        return .init(base.centerXAnchor,
                     superAnchor: base.superView?.centerXAnchor)
    }
    
    public var centerY: AnchorWrapper<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return .init(base.centerYAnchor,
                     superAnchor: base.superView?.centerYAnchor)
    }
    
    public var firstBaseline: AnchorWrapper<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return .init(base.firstBaselineAnchor,
                     superAnchor: base.superView?.firstBaselineAnchor)
    }
    
    public var lastBaseline: AnchorWrapper<NSLayoutYAxisAnchor, NSLayoutYAxisAnchor> {
        return .init(base.lastBaselineAnchor,
                     superAnchor: base.superView?.lastBaselineAnchor)
    }
}
