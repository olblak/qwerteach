require "administrate/base_dashboard"

class PictureDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    gallery: Field::BelongsTo,
    id: Field::Number,
    description: Field::String,
    image: Field::String,
    gallery_token: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    image_file_name: Field::String,
    image_content_type: Field::String,
    image_file_size: Field::Number,
    image_updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :gallery,
    :id,
    :description,
    :image,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :gallery,
    :id,
    :description,
    :image,
    :gallery_token,
    :created_at,
    :updated_at,
    :image_file_name,
    :image_content_type,
    :image_file_size,
    :image_updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :gallery,
    :description,
    :image,
    :gallery_token,
    :image_file_name,
    :image_content_type,
    :image_file_size,
    :image_updated_at,
  ]

  # Overwrite this method to customize how pictures are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(picture)
  #   "Picture ##{picture.id}"
  # end
end
