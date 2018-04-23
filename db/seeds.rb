10000.times do
  Film.create!(
      user_id: Random.rand(1..999),
      category: ["感動","ヒューマンドラマ","アクション","サスペンス・ミステリー","ファンタジー","恋愛","実話","ホラー","コメディ","アドベンチャー","スポーツ","戦争","スパイ","パニック","アニメ","SF","貧困","復讐","ドキュメンタリー"].sample,
      name: Faker::Book.title,
      watch_date: Time.at(Random.rand((Time.parse("2000/1/1").to_i..Time.parse("2018/3/31").to_i))),
      director: "#{Faker::Name.first_name} #{Faker::Name.last_name}",
      comment: "#{Faker::Lorem.paragraph(2, false, 8)}",
      point: Random.rand(1..5),
      reference: Faker::Internet.url,
      )
end