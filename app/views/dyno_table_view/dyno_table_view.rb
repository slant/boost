class DynoTableView < UITableView

  def initWithFrame(frame, style: style)
    super.tap do
      self.rowHeight = 62

      zero_view = UIView.alloc.initWithFrame(CGRectZero)
      zero_view.backgroundColor = UIColor.clearColor
      self.setTableFooterView zero_view

      @spinner = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray)
      @spinner.hidesWhenStopped = true
      @spinner.center = [frame.size.width / 2, 80]
      @spinner.startAnimating
      self.addSubview @spinner
    end
  end

  def reloadData
    super
    if numberOfRowsInSection(0) > 0
      @spinner.stopAnimating
    end
  end

end
