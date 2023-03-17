class RenameStartDateToStartTimeInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :start_date, :start_time
  end
end
