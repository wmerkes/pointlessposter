class Github 
  def initialize(name)
    $name =  Octokit::Client.new(:access_token => "af1385683b225105c5e4b6c5364afe74a861898b")
    @repos = Array.new
  end

  def get_repo_name
    @repos = []
    client = $name
    client.repos.each do |r|
      @repos.push(r.name)
    end
  end

  def create_repo_post
    client = $name
    @repos = []
    client.repos.each do |r|
      @repos = @repos.push(r.name)
    end
      User.all.first.microposts.create(content: @repos.to_s) 
  end
end

namespace :github do
  desc 'Gets Github repo information, posts to user'
  task repo_post: :environment do
    Github.new($name).create_repo_post
  end 
end

