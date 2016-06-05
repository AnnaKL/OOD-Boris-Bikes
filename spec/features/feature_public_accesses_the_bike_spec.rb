require 'docking_station'

feature 'member of public can access the bike' do
  scenario 'docking station releases a working bike' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    bike.working?
  end
end
