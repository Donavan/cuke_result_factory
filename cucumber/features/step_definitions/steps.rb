Given /I have a (.*) scenario/ do |what|

end

When /I do (.*) stable/ do |what|

end

When /I do (.*) brittle/ do |what|
  raise "#{what} is brittle" if rand(10) > 5
end

When /I do (.*) broken/ do |what|
  raise "'#{what}' is broken"
end

Then /(.*) is awesome/ do |what|

end

When /I have awesome data/ do |table|

end

Then /(.*) is horrid/ do |what|
  expect(what).to eq('awesome')
end

Then /(.*) is brittle/ do |what|
  expect(what).to eq('brittle') if rand(10) > 5
end