records = [
  {
    user: { username: "sharky_j", avatar_url: "http://naserca.com/images/sharky_j.jpg", email: "sharky_j@gmail.com", password: "abcd" },
    post: { photo_url: "http://naserca.com/images/shark.jpg"}
  },
  {
    user: { username: "kirk_whalum", avatar_url: "http://naserca.com/images/kirk_whalum.jpg", email: "kirk_w@gmail.com", password: "abcd" },
    post: { photo_url: "http://naserca.com/images/whale.jpg"}
  },
  {
    user: { username: "marlin_peppa", avatar_url: "http://naserca.com/images/marlin_peppa.jpg", email: "marlin_p@gmail.com", password: "abcd" },
    post: { photo_url: "http://naserca.com/images/marlin.jpg"}
  }
]

puts "=== Seeding database... ==="

# create Users and FinstagramPosts
records.each do |record|
  # Create a User
  user = User.create record[:user]
  puts "-- Created User: #{user.username}"

  # Create a FinstagramPost
  finstagram_post = record[:post]
  finstagram_post[:user_id] = user.id
  FinstagramPost.create finstagram_post
  puts "-- Created a FinstagramPost for User: #{user.username}"
end

puts "=== Seeding complete. ==="