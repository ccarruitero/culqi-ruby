require 'util/connect'

module Delete

  def initialize
    @url = ""
  end

  def delete(id)
    response = Culqi.connect(@url+id+"/", Culqi.api_key, "", "delete")
    return response.read_body
  end

end
