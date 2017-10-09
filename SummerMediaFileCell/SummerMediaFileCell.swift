//
//  SummerMediaFIleCellTableViewCell.swift
//  SummerMediaFileCell
//
//  Created by Kang Jinyeoung on 08/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit

open class SummerMediaFileCell: UITableViewCell {
  
  open var fileName: UILabel!
  open var fileDuration: UILabel!
  open var fileSize: UILabel!
  open var fileFormat: UILabel!
  
  
  open var fileThumbnailView: UIImageView!
  open var bookmarkButton : UIButton!

  open override  func awakeFromNib() {
        super.awakeFromNib()
    
    }
  
  public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupBasicConfiguration()
    setupThumbnailView()
    setupLabels()
    setupBookmarkButton()
    

  
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
  }
  
  private func setupBasicConfiguration() {
    self.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1) /* #f7d9cd */
  }
  
  private func setupThumbnailView() {
    let wholeWidth = self.frame.size.width * 0.5
    let wholeHeight = (self.frame.size.height * 2 )-20
    
    fileThumbnailView  = UIImageView(frame:CGRect(x:20, y:20, width:wholeWidth, height:wholeHeight));
    fileThumbnailView.image = UIImage(named:"default.png")
    
    contentView.addSubview(fileThumbnailView)
  }
  
  private func setupLabels() {
    let wholeWidth = self.frame.size.width * 0.5
    let wholeHeight = (self.frame.size.height)/3
    
    // for FileName Label.
    
    let fileNameRect = CGRect(x:self.fileThumbnailView.frame.origin.x + self.fileThumbnailView.frame.width + 10 ,y:30 , width: wholeWidth, height: wholeHeight)
    
    fileName = UILabel(frame: fileNameRect)
    fileName.text = "Hello World"
    
    contentView.addSubview(fileName)
    
    // for FileDuration Label.
    let fileDurationRect = CGRect(x:self.fileThumbnailView.frame.origin.x + self.fileThumbnailView.frame.width + 10 ,y:self.fileName.frame.origin.y + self.fileName.frame.height + 10, width:45, height: wholeHeight)
    
    fileDuration = UILabel(frame: fileDurationRect)
    
    fileDuration.font = fileDuration.font.withSize(12)
    fileDuration.text = "00:50 |"
    
    contentView.addSubview(fileDuration)
    
    // for FileSize Label.
    let fileSizeRect = CGRect(x:self.fileDuration.frame.origin.x + self.fileDuration.frame.width + 3 ,y:self.fileName.frame.origin.y + self.fileName.frame.height + 10, width: 45, height: wholeHeight)
    
    fileSize = UILabel(frame:fileSizeRect)
    
    fileSize.font = fileSize.font.withSize(12)
    fileSize.text = "7MB |"
    
    contentView.addSubview(fileSize)
    
    // for FileSize Label.
    let fileFormatRect = CGRect(x:self.fileSize.frame.origin.x + self.fileSize.frame.width ,y:self.fileName.frame.origin.y + self.fileName.frame.height + 10, width: 45, height: wholeHeight)
    
    fileFormat = UILabel(frame:fileFormatRect)
    
    fileFormat.font = fileFormat.font.withSize(12)
    fileFormat.text = "MP3 "
    
    contentView.addSubview(fileFormat)

  }
  
  private func setupBookmarkButton() {
    let wholeHeight = (self.frame.size.height)/3
    
    // for FileSize Label.
    let bookmarkRect = CGRect(x:self.fileFormat.frame.origin.x + self.fileFormat.frame.width ,y:self.fileName.frame.origin.y + self.fileName.frame.height + 10, width: 45, height: wholeHeight)
    
    bookmarkButton = UIButton(frame:bookmarkRect)
    
    let btnImage = UIImage(named: "bookmark")
    
    bookmarkButton.setImage(btnImage , for: UIControlState.normal)
    bookmarkButton.tintColor = UIColor.yellow
    
    
    contentView.addSubview(bookmarkButton)
    
  }

}
