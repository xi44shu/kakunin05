class Prefecture < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '愛知' },
    { id: 3, name: '岐阜' },
    { id: 4, name: '三重' },
    { id: 5, name: '静岡' },
    { id: 6, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :public_utilities

end