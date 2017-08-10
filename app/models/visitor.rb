class Visitor < ActiveRecord::Base

  require 'google_drive'

  has_no_table
  column :favorite, :string
  column :comment, :string
  validates_presence_of :favorite

  IMAGE_LABELS = ['San Francisco', 'Sydney', 'Paris']

  def update_spreadsheet
#   connection = GoogleDrive.login(Rails.application.secrets.gmail_username, Rails.application.secrets.gmail_password)
#   connection = GoogleDrive::Session.from_config("config.json")
    connection = GoogleDrive::Session.from_service_account_key("rails-bootstrap-1-f53057ca70a6.json")

    ss = connection.spreadsheet_by_title('Rails-Bootstrap-Example')
    if ss.nil?
      ss = connection.create_spreadsheet('Rails-Bootstrap-Example')
    end
    ws = ss.worksheets[0]
    last_row = 1 + ws.num_rows
    ws[last_row, 1] = Time.now
    ws[last_row, 2] = self.favorite
    ws[last_row, 3] = self.comment
    ws.save
  end

end
