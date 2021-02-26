class HaikuSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :haiku, :genre
    has_many :edits, serializer: EditSerializer
    # attributes :edits do |edit|
    #     EditSerializer.new(edit).as_json["data"]
    # end
end