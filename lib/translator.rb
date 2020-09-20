# require modules goes here
require 'yaml'
require 'pry'

def load_library(emoticon_file)
  # code goes here
emoticons = YAML.load_file('./lib/emoticons.yml')

emoticon_lib = {}

emoticons.each do |meaning, value|
    english = value[0]
    japanese = value[1]
    emoticon_lib[meaning]= {}
    emoticon_lib[meaning][:japanese] = japanese
    emoticon_lib[meaning][:english] = english
end
  emoticon_lib
end



def get_japanese_emoticon(emoticon_file, emoticon)
   emoticon_lib = load_library(emoticon_file)
   japanese_emoticon = []
   
   
end

def get_english_meaning(emoticon_file, emoticon)
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib[emoticon][:english][0]
end