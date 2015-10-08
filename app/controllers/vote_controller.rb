get '/answer/vote/add' do
  question_find = Answer.find(params[:answer_id]).question_id
  Vote.create(votable_type: 'Answer', votable_id: params[:answer_id])
  redirect "/question/#{question_find}"
end

get '/question/vote/add' do
  Vote.create(votable_type: 'Question', votable_id: params[:question_id])
   redirect "/test"
end

get '/test' do
  @list = Question.all
  erb :test
end
