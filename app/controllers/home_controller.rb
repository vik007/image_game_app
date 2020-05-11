# frozen_string_literal: true
#
# class fetch Attachment and Play data
class HomeController < ApplicationController
  def index
    @attachment = Attachment.new
  end

  def game
  	# fetch random 10 attachments blob url in descending order of created at
    @attachments = Attachment.order("created_at DESC")
                            .map {|a| a.images.map{ |img| Rails.application.routes.url_helpers.rails_blob_url(img)} }
                            .flatten.shuffle.first(10)

  	# fetch Play data in ascending order of created at
    @plays = Play.order("created_at ASC")
  end
end