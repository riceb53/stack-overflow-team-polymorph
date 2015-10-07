


get '/' do
  # @list = Question.all
  #this will be a active record request for all the questions
@list = [1,2,3,4,5,6]
@hash_tester = {title:'test_1', q_id:'1'}
 erb :index
end

get '/question/new' do
  erb :question_new
end


get '/question/:q_id' do
  #@question = Question.find(params[:q_id])
  #@answers = Answer.find_all(question_id: params[:q_id])
  p params
  @tester_thingy = params[:q_id]
  "Hello World"
  erb :question
end


