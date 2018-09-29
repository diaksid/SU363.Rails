module LinkHelper

  def link_status(path)
    if path == request.path
      status = 'active'
    elsif path != '/' and request.path.index(path) == 0
      status = 'parent'
    else
      status = nil
    end
    status
  end

end
