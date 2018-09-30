//
//  ViewController.swift
//  EWPhotoPicker
//
//  Created by Ethan.Wang on 2018/9/29.
//  Copyright © 2018年 Ethan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView =  UIImageView(frame: CGRect(x: (UIScreen.main.bounds.width - EWPickerManager.pickerPhotoSize.width) / 2, y: 100, width: EWPickerManager.pickerPhotoSize.width, height: EWPickerManager.pickerPhotoSize.width))
        imageView.backgroundColor = UIColor.gray
        return imageView
    }()

    private let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 150, y: 450, width:  UIScreen.main.bounds.width - 300, height: 50))
        button.setTitle("相册", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(onClickPhotoButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(imageView)
        self.view.addSubview(button)
    }

    @objc private func onClickPhotoButton(){
        let nvc = UINavigationController(rootViewController: EWPhotoCollectionViewController())
        nvc.navigationBar.isHidden = true
        self.present(nvc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

