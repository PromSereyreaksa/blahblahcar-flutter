import 'package:blabla/model/ride/ride.dart';

import 'package:blabla/model/ride/locations.dart';
import 'package:blabla/service/rides_service.dart';

void main() {
  Location dijon = Location(country: Country.france, name: "Dijon");

  List<Ride> filteredRide = RidesService.filterBy(
    departure: Location(name: "Dijon", country: Country.france),
    seatsRequested: 2,
  );

  List<Ride> filteredRide1 = RidesService.filterByDeparture(
    Location(name: "Dijon", country: Country.uk),
  );

  List<Ride> filteredRide2 = RidesService.filterBySeatRequested(2);

  for (Ride ride in filteredRide) {
    print("Filter by departure and seat requested: \n");
    print(ride);
  }

  for (Ride ride in filteredRide1) {
    print("Filter by departure: \n");
    print(ride);
  }

  for (Ride ride in filteredRide2) {
    print("Filter by seat requested: \n");
    print(ride);
  }
}
