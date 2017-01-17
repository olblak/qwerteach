require "administrate/base_dashboard"

class TeacherDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
      gallery: Field::HasOne,
      adverts: Field::HasMany,
      postulation: Field::HasOne,
      #   conversations: Field::HasMany,
      sent_comment: Field::HasMany.with_options(class_name: "Comment"),
      received_comment: Field::HasMany.with_options(class_name: "Comment"),
      level: Field::BelongsTo,
      degrees: Field::HasMany,
      id: Field::Number,
      login: Field::String,
      firstname: Field::String,
      lastname: Field::String,
      birthdate: Field::DateTime,
      description: Field::Text,
      gender: Field::String,
      phonenumber: Field::String,
      type: Field::String,
      first_lesson_free: Field::Boolean,
      occupation: Field::String,
      postulance_accepted: Field::Boolean,
      teacher_status: Field::String,
      email: Field::String,
      encrypted_password: Field::String,
      reset_password_token: Field::String,
      reset_password_sent_at: Field::DateTime,
      remember_created_at: Field::DateTime,
      sign_in_count: Field::Number,
      current_sign_in_at: Field::DateTime,
      last_sign_in_at: Field::DateTime,
      current_sign_in_ip: Field::String,
      last_sign_in_ip: Field::String,
      confirmation_token: Field::String,
      confirmed_at: Field::DateTime,
      confirmation_sent_at: Field::DateTime,
      unconfirmed_email: Field::String,
      failed_attempts: Field::Number,
      unlock_token: Field::String,
      locked_at: Field::DateTime,
      created_at: Field::DateTime,
      updated_at: Field::DateTime,
      admin: Field::Boolean,
      avatar_file_name: Field::String,
      avatar_content_type: Field::String,
      avatar_file_size: Field::Number,
      avatar_updated_at: Field::DateTime,
      mango_id: Field::Number,
      score: Field::Number,
      avatar_score: Field::Number,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
      :id,
      :gallery,
      :postulation,
      #  :conversations,
      :sent_comment,
      :received_comment,
      :login,
      :postulance_accepted,
      :teacher_status,
      :adverts,
      :score,
      :avatar_score,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
      :id,
      :firstname,
      :lastname,
      :email,
      :mango_id,
      :occupation,
      :birthdate,
      :level,
      :gender,
      :phonenumber,
      :first_lesson_free,
      :description,

      :postulation,
      :gallery,
      :adverts,
      :degrees,
      :received_comment,
      # #   :conversations,
      # :sent_comment,
      # #:login,

      # :type,
      :postulance_accepted,
      :teacher_status,
      :sign_in_count,
      # #:encrypted_password,
      # #:reset_password_token,
      # #:reset_password_sent_at,
      # #:remember_created_at,

      :current_sign_in_at,
      :last_sign_in_at,
      :current_sign_in_ip,
      :last_sign_in_ip,
      # #:confirmation_token,
      :confirmed_at,
      :confirmation_sent_at,
      :unconfirmed_email,
      # #:failed_attempts,
      # #:unlock_token,
      # #:locked_at,
      :created_at,
      :updated_at,
      :admin,
      # #:avatar_file_name,
      # #:avatar_content_type,
      # #:avatar_file_size,
      # #:avatar_updated_at,
      :score,
      :avatar_score,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
      :gallery,
      :adverts,
      #   :conversations,
      :sent_comment,
      :received_comment,
      :level,
      :postulation,
      :degrees,
      #:login,
      :firstname,
      :lastname,
      :birthdate,
      :description,
      :gender,
      :phonenumber,
      #:type,
      #:first_lesson_free,
      #:occupation,
      :postulance_accepted,
      :teacher_status,
      :email,
      #:encrypted_password,
      #:reset_password_token,
      #:reset_password_sent_at,
      #:remember_created_at,
      #:sign_in_count,
      #:current_sign_in_at,
      #:last_sign_in_at,
      #:current_sign_in_ip,
      #:last_sign_in_ip,
      #:confirmation_token,
      #:confirmed_at,
      #:confirmation_sent_at,
      #:unconfirmed_email,
      #:failed_attempts,
      #:unlock_token,
      #:locked_at,
      :admin,
      :score,
      :avatar_score,
  ]

  # Overwrite this method to customize how teachers are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(teacher)
  #   "Teacher ##{teacher.id}"
  # end
end
