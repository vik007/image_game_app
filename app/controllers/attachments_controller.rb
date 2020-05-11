# frozen_string_literal: true
#
# class perform create operation of Attachment
class AttachmentsController < ApplicationController
  def create
    # initialize Attachment object for create new attachment data in db
    @attachment = Attachment.new(attachment_params)

    # save attachment and check attachment create operation success or failed
    if @attachment.save
      redirect_to game_path, notice: 'Images uploaded successfully!'
    else
      # join all error messages from ',' and redirect to root path
      redirect_to root_path, alert: @attachment.errors.full_messages.join(', ')
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def attachment_params
    params.require(:attachments).permit(images: [])
  end
end
