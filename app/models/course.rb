class Course < ApplicationRecord
  enum periodo: [ :matutino, :vespertino, :noturno, :integral ]
  has_many :curriculums
  has_many :subjects, through: :curriculums
  has_many :requisites
  has_many :users
  def full_name
    "#{nome} - (#{periodo})"
  end
end
