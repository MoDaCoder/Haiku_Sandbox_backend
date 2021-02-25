class HaikuSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :haiku, :genre
    # attributes :edits do |edit|
    #     EditSerializer.new(haiku.edits).as_json["data"]
    # end
end