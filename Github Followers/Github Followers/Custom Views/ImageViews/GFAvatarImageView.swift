//
//  GFAvatarImageView.swift
//  Github Followers
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    private let placeholderImage = Images.placeholder
    private let cache = NetworkManager.shared.cache
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = nil
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
