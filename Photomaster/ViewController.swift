//
//  ViewController.swift
//  Photomaster
//
//  Created by Arisa Muto on 2019/04/25.
//  Copyright © 2019 Arisa Muto. All rights reserved.
//

import UIKit

class ViewController: UIViewController UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    //写真表示用ImageView
    @IBOutlet var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //[カメラ]ボタンを押したときに呼ばれるメソッド
    @IBAction func onTappedCameraButton() {
    }
  //[アルバム」ボタンを押したときに呼ばれるメソッド
    @IBAction func onTappedAlbumButton() {
    }
    
   //カメラ、アルバムの呼び出しメゾット(カメラorアルバムのソースタイプが引数
    func presentPickerController(sourceType: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(SourceType) {
            let picker = UIImagePickerController()
            picker.sourceType = sourceType
            picker.delegate = self
            self.present(picker, animated:true,completion:nil)
        }
    }
    
    //写真が選択された時に呼ばれるメソッド
    func imagePickerController(_picker:UIImagePickerController,
                               didFinishPickingMediaWithlnfo info:[UIImagePickerController.InfoKey:Any]) {
        self.dismiss(animated: true, completion: nil)
        //画像を出力
        photoImageView.image = info[.originalImage]as? UIImage
    }
}
