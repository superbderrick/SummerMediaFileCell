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
        // Initialization code
    }
  
  public override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    let gap : CGFloat = 10
    let labelHeight: CGFloat = 30
    let labelWidth: CGFloat = 150
    let lineGap : CGFloat = 5
    let label2Y : CGFloat = gap + labelHeight + lineGap
    
    
    fileName = UILabel()
    fileName.frame = CGRect(x: gap, y: gap, width: labelWidth, height: labelHeight)
    fileName.textColor = UIColor.black
    contentView.addSubview(fileName)
    
    fileFormat = UILabel()
    fileFormat.frame = CGRect(x: gap, y: label2Y, width: labelWidth, height: labelHeight)
    fileFormat.textColor = UIColor.black
    contentView.addSubview(fileFormat)
    
  
  }
  
  required public init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override open func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    
  }

}
