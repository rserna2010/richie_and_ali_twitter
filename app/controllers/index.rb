get '/' do

 @politician =  Politician.order("average_score DESC")




  erb :index
end

