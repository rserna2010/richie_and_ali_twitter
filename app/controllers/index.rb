get '/' do

 @politician_positive =  Politician.order("average_score DESC")
 @politician_negative =Politician.order("average_score")




  erb :index
end

