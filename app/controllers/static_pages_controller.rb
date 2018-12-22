class StaticPagesController < ApplicationController

  def home
    @activities = Activity.categorize_activities
    @art_activities = @activities["art"][0..2]
    @dance_activities = @activities["dance"][0..2]
    @music_activities = @activities["music"][0..2]
    @art = Category.find_by(category_name: "art")
    @music = Category.find_by(category_name: "music")
    @dance = Category.find_by(category_name: "dance")
  end

  def terms_and_conditions
  end

  def privacy_conditions
  end 

end
