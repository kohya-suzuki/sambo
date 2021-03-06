
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.create(:id => '1', :content => '赤ちゃんの首がすわるのは生後、何ヶ月が目安となる？', :level => '1', :question_contents => 'housework')
Question.create(:id => '2',:content => '乳幼児の目が見えるようになるのは、生後約何ヶ月から？', :level => '1', :question_contents => 'housework')
Question.create(:id => '3', :content => '愛知県の子育て応援マスコットのキャラクター名は？', :level => '1', :question_contents => 'housework')
Question.create(:id => '4', :content => '赤ちゃんが便秘になったときに効果的な野菜は？', :level => '1', :question_contents => 'housework')
Question.create(:id => '5', :content => '赤ちゃんの授乳で（「母乳」と「ミルク」両方にあてはまることですが、）飲ませ終わったらすることがあります。それは何でしょうか？', :level => '1', :question_contents => 'housework')

Answer.create(:id => '1', :answer1 => '3ヶ月', :answer2 => '６ヶ月', :answer3 => '９ヶ月')
Answer.create(:id => '2', :answer1 => '6ヶ月', :answer2 => '9ヶ月', :answer3 => '１ヶ月')
Answer.create(:id => '3', :answer1 => 'はぐみん', :answer2 => 'いくみん', :answer3 => 'ぴくみん')
Answer.create(:id => '4', :answer1 => 'さつまいも', :answer2 => 'ほうれんそう', :answer3 => 'じゃがいも')
Answer.create(:id => '5', :answer1 => 'ゲップをさせる', :answer2 => 'みずを飲ませる', :answer3 => '口を拭く')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

QuestionAnswer.create(:id => '1', :question_id => 1 , :answer_id => 1)
QuestionAnswer.create(:id => '2', :question_id => 2 , :answer_id => 2)
QuestionAnswer.create(:id => '3', :question_id => 3 , :answer_id => 3)
QuestionAnswer.create(:id => '4', :question_id => 4 , :answer_id => 4)
QuestionAnswer.create(:id => '5', :question_id => 5 , :answer_id => 5)