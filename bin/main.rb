#!/usr/bin/env ruby


def welcome_message
puts <<-HEREDOC
------------------welcome to Azeez and Helcio tic tac toe-------------------
The 1st player is represented by X, the 2nd player is O.
Each chooses numbers from 1 to 9 to select desired cell
------------------------------------------------
HEREDOC
end

def users_names 
    user_1 = gets.chomp
