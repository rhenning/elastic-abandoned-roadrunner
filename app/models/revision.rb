class Revision
  include Mongoid::Document
  field :revision_type, type: String
  field :delta, type: String
  field :parent_id, type: String
  field :ent_type, type: String
  field :timeline_position, type: Integer
end
