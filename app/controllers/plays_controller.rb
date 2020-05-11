# frozen_string_literal: true
#
# class perform create operation of Play
class PlaysController < ApplicationController
  def create
    # create play data in bluk
    @plays = Play.create(plays_params)
    render json: [@plays.as_json(only: [:id, :image_url, :timer_value])]
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def plays_params
    params.require(:plays).permit(:image_url, :timer_value)
  end
end