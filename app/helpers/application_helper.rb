module ApplicationHelper

  def get_timer_array
    attachments_size = @attachments.size
    timer            = 10
    timer_array      = {}
    index            = 0
    puts "========================== #{attachments_size}"

    while timer > 0
      timer_array[timer] = @attachments[index]
      timer = timer - 1
      if index == attachments_size - 1
        index = 0
      else
        index = index + 1
      end
    end
    timer_array
  end
end