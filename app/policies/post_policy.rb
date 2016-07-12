class PostPolicy
  attr_reader :current_user, :post

  def initialize(current_user, post)
    @current_user = current_user
    @post = post
  end

  def index?
    true
  end

  def show?
    true
  end

  def edit?
    @current_user.try(:admin?) or @current_user == @post.user
  end

  def update?
    @current_user.try(:admin?) or @current_user == @post.user
  end

  def destroy?
    @current_user.try(:admin?)
  end

end
