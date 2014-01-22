require 'pp'
require 'open-uri'
require 'json'
require 'date'

if ARGV.length != 1
  puts "Use: ruby cinii_sist.rb NAID"
  exit(1)
end

naid = ARGV[0]
html = open("http://ci.nii.ac.jp/naid/#{naid}.json").read
json = JSON.parser.new(html)
hash = json.parse["@graph"][0]

title =  hash["dc:title"][0]["@value"]
creator = hash["dc:creator"][0][0]["@value"]
publication_name = hash["prism:publicationName"][0]["@value"]
year = Date.parse(hash["dc:date"]).year
volume = hash["prism:volume"]
number = hash["prism:number"]
start_p = hash["prism:startingPage"]
end_p = hash["prism:endingPage"]

puts "#{creator}. #{title}. #{publication_name}. #{year}, #{volume}(#{number}), p. #{start_p}-#{end_p}"
