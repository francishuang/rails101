class Account::GroupsController < ApplicationController

  before_action :authenticate_user!

  def index
    @groups = current_user.participated_groups('post_count DESC')
  end
end
