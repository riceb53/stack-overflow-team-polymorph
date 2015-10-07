enable :sessions


get '/' do
  # Question.all
 erb :index
end

get '/question/new' do
  erb :question_new
end


get '/question/:q_id' do
  @question = Question.find(params[:q_id])
  @answers = Answer.where(question_id: params[:q_id])
  p params
  "Hello World"
  erb :question
end

post '/post/question' do
  place_holder = params[:q_id]
  p params
  @answer = Answer.create(response: params[:response], question_id: params[:q_id], user_id: 7)
  redirect "/question/#{place_holder}"
end

post '/post/question/new' do
  @question = Question.create(title: params[:title], content: params[:content], user_id: params[:user_id])
  redirect "/question/#{@question.id}"
end

# get '/question/'
