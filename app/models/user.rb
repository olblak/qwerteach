class User < ActiveRecord::Base
  GENDER_TYPES = ["Not telling","Male", "Female"]
  ACCOUNT_TYPES = ["Student", "Teacher"]


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  #
  #    database_authenticatable – Users will be able to authenticate with a login and password that are stored in the database. (password is stored in a form of a digest).
  #    registerable – Users will be able to register, update, and destroy their profiles.
  #    recoverable – Provides mechanism to reset forgotten passwords.
  #    rememberable – Enables “remember me” functionality that involves cookies.
  #    trackable – Tracks sign in count, timestamps, and IP address.
  #    validatable – Validates e-mail and password (custom validators can be used).
  #    confirmable – Users will have to confirm their e-mails after registration before being allowed to sign in.
  #    lockable – Users’ accounts will be locked out after a number of unsuccessful authentication attempts.

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  def admin?
    admin
  end
  def self.types
    %w(Student Admin Teacher)
  end
end