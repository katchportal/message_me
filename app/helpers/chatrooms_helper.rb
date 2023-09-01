module ChatroomsHelper
  def convert_flash_key(devise_key)
    equivalent = { "notice" => "success", "alert" => "error" }
    equivalent[devise_key.to_s]
  end
end


