class Image < ApplicationRecord
  validates_format_of :url, :with => %r{\.(png|jpg|jpeg|gif)$}i, :message => "must have a valid filetype", multiline: true
end
