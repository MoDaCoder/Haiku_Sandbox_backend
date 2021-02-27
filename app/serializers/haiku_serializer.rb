class HaikuSerializer
    include FastJsonapi::ObjectSerializer
    attributes :title, :haiku, :genre, :edits
end