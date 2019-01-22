require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)


def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
songs.each_with_index do |song, i|
  puts "#{i+1}. #{song}"
  end
end


def play(songs)
puts "Please enter a song name or number:"
song_to_play = gets.chomp
if (1..9).to_a.include?(song_to_play.to.i)
  puts "Playing #{songs[song_to_play.to_i - 1]}"
elsif song.include?(song_to_play)
  puts "Playing #{song_to_play}"
else
  puts "Invalid input, please try again"
end
end


def exit_jukebox
puts "Goodbye"
end



def run(songs)
puts "Please enter a command:"
input = gets.chomp()
if input == "help"
  help
elsif input == "list"
  list
elsif input == "play"
  list(songs)
  play(songs)
elsif input == "exit"
  exit_jukebox
else
  help
end
end
