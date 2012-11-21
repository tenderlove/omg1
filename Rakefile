file 'parser.rb' => "grammar.y" do |t|
  sh "racc -o #{t.name} #{t.prerequisites.first}"
end

task :compile => 'parser.rb'
