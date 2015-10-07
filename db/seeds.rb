Question.create([{
  title: 'how do i use ajax?',
  user_id: 1,
  content: 'completely lost on the syntax i do this..... as;dlfajslkdfj'
  },
  {
  title: 'Javascipt is hard',
  user_id: 2,
  content: 'dunno what i am doing'
  },
  title: 'ruby methods issues',
  user_id: 2,
  content: 'Still not sure what i am doing'
])

Answer.create([
  {
    response: 'you need to add more ;',
    user_id: 2,
    question_id: 1
  },
  {
    response: 'Maybe you should try ruby',
    user_id: 1,
    question_id: 2
  },
  {
    response: 'try adding a def before...',
    user_id: 1,
    question_id: 3
  }
  ])

User.create([
  {
    user_name: 'javatony',
    password: 'password'
  },
  {
    user_name: 'weeznog',
    password: 'dog'
  }
  ])
