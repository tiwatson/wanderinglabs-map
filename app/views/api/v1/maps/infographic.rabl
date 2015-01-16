object @map => nil

attributes :num_places, :num_nights, :num_free_nights, :percentage_free_nights, :per_night_fee, :walmart_count

attributes :current_state, :current_state_stay, :current_state_face

child @map.most_exspensive => :most_exspensive do
  attributes :title, :state, :stay_length, :price
end

child @map.map_places.last => :current do
  attributes :title, :state, :stay_length, :price
end

node(:num_states) { @states.size }

node(:categories) { @categories }
node(:states) { @states }