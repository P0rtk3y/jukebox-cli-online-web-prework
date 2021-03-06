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

def help 
  puts "I accept the following commands:\n
       - help : displays this help message \n
       - list : dispalys a list of songs you can play \n 
       - play : lets you choose a song to play \n 
       - exit: exits this program" 
end 

def say_hello(name) 
  "Hi #{name}!"
end 


def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end 

def play(songs)
  puts "Please enter a song name or number: "
  user_song = gets.chomp 
  
  songs.each_with_index do |song, index| 
    if user_song == song || user_song.to_i == index+1 
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end 
  end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(args) 
  help 
  loop do 
    puts "Please enter a command:"
    command = gets.chomp.downcase
    case command   
      when "list"
        list(args) 
      when "play"
        play(args) 
      when "help"
        help 
      when "exit"
        exit_jukebox 
        break 
    end  
  end
end 