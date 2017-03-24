=begin
class Github 
  def initialize(name)
    @name = name
    @repos = []
  end

  def create_repo_post

    client = Octokit::Client.new(:access_token => "af1385683b225105c5e4b6c5364afe74a861898b")
    client.repos.each do |r|
      User.all.first.microposts.create(content: r)
    end
  end
end
=end

