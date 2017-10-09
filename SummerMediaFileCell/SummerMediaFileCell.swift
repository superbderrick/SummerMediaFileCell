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
  open var fileFormat: UILabel!
  open var fileSize: UILabel!
  
  open var fileThumbnailView: UIImageView!
  open var bookmarkButton : UIButton!

  open override  func awakeFromNib() {
        super.awakeFromNib()
    
    }
  
  public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    setupThumbnailView()
    
    setupOthersView()
    
    

  
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
  }
  
  private func setupThumbnailView() {
    let wholeWidth = self.frame.size.width * 0.5
    let wholeHeight = (self.frame.size.height * 2 )-20
    
    fileThumbnailView  = UIImageView(frame:CGRect(x:20, y:20, width:wholeWidth, height:wholeHeight));
    fileThumbnailView.image = UIImage(named:"default.png")
    
    contentView.addSubview(fileThumbnailView)
  }
  
  private func setupOthersView() {
    let wholeWidth = self.frame.size.width * 0.5
    let wholeHeight = (self.frame.size.height)/3
    
    fileName = UILabel(frame:CGRect(x:self.fileThumbnailView.frame.origin.x + self.fileThumbnailView.frame.width + 10 ,y:20 , width: wholeWidth, height: wholeHeight))
    fileName.text = "Hello World"
    
    contentView.addSubview(fileName)
  }

}
