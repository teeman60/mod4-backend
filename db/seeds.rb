# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Meme.destroy_all
 
responsePop = HTTParty.get("https://meme-api.herokuapp.com/gimme/popular/50")
responseWholesome = HTTParty.get("https://meme-api.herokuapp.com/gimme/wholesome/50")
responseMemes = HTTParty.get("https://meme-api.herokuapp.com/gimme/memes/50")
responseDankMemes = HTTParty.get("https://meme-api.herokuapp.com/gimme/dankmemes/50")
responseProgrammerHumor = HTTParty.get("https://meme-api.herokuapp.com/gimme/programmerhumor/50")

responsePop["memes"].each do |c| 
    Meme.create(name: c["title"],url: c["url"], category: c["subreddit"],likes: 0)
end

responseWholesome["memes"].each do |c| 
    Meme.create(name: c["title"],url: c["url"], category: c["subreddit"],likes: 0)
end

responseMemes["memes"].each do |c| 
    Meme.create(name: c["title"],url: c["url"], category: c["subreddit"],likes: 0)
end

responseDankMemes["memes"].each do |c| 
    Meme.create(name: c["title"],url: c["url"], category: c["subreddit"],likes: 0)
end

responseProgrammerHumor["memes"].each do |c| 
    Meme.create(name: c["title"],url: c["url"], category: c["subreddit"],likes: 0)
end

u1 = User.create(username:"Luis", password:"123")


