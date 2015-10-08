enable :sessions


get '/' do
  @list = Question.all
 erb :index
end

get '/question/new' do
  erb :question_new
end


get '/question/:q_id' do

  @question = Question.find(params[:q_id])
  @answers = Answer.where(question_id: params[:q_id])
  erb :question
end

post '/post/question' do
  p params
  p session
  place_holder = params[:q_id]
if session[:user_id] == nil
    redirect '/login'
  else
  @answer = Answer.create(response: params[:response], question_id: params[:q_id], user_id: session[:user_id])
    redirect "/question/#{place_holder}"
  end
end

post '/post/question/new' do
  if session[:user_id] == nil
    redirect '/login'
  else
    @question = Question.create(title: params[:title], content: params[:content], user_id: session[:user_id])
    redirect "/question/#{@question.id}"
  end
end

# get '/question/'
