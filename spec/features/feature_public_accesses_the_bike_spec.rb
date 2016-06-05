require 'docking_station'
require 'bike'

feature 'member of public can access the bike' do
  scenario 'docking station releases a working bike' do
    docking_station = DockingStation.new
    docking_station.dock Bike.new
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
  
  scenario 'memeber of public can return a bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(docking_station.dock(bike)).to eq bike
  end
end
