class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :first_name, :grade,:group,:contact
   # validates_presence_of :username
   validates_presence_of :first_name
   validates_presence_of :grade
   validates_presence_of :group
   validates_presence_of :contact

    # validates_each :username do |record, attr, value|
    #   record.errors.add(attr, 'must start with upper case') if value =~ /\A[a-z]/
    # end

   has_many :quereys
  # attr_accessible :title, :body
end
