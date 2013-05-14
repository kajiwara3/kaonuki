# coding: utf-8
fnames = %w(佐藤 鈴木 高橋 田中)
gnames = %w(太郎 次郎 花子)
0.upto(5) do |idx|
  user = User.create(
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    email: "test#{idx}@a.com",
    password: "password",
    password_confirmation: "password",
  )
end