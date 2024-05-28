-- GET ALL DEALERSHIPS
SELECT * FROM carDealership.Dealerships;
-- FIND ALL VEHICLES BY SPECIFIC DEALERSHIP
SELECT * FROM carDealership.Inventory WHERE Dealership_id = 2;
-- FIND CAR BY VIN
SELECT * FROM carDealership.Vehicles WHERE Vin = 1001;
-- FIND DEALERSHIP WHERE CAR IS LOCATED BY VIN
SELECT Inv.Dealership_id, Inv.Vin, Dealer.DealershipName, Dealer.Address, Dealer.Phone
FROM carDealership.Inventory as Inv
JOIN Dealerships as Dealer
ON Inv.Dealership_id = Dealer.Dealership_id
WHERE Vin = 1002;
-- FIND ALL DEALERSHIPS THAT HAVE CERTAIN CAR TYPE (RED FORD MUSTANG)
SELECT Dealer.Dealership_id, Dealer.DealershipName, Vehicles.Vin
FROM carDealership.Dealerships as Dealer
JOIN Inventory ON Dealer.Dealership_id = Inventory.Dealership_id
JOIN Vehicles ON Inventory.Vin = Vehicles.Vin
WHERE Vehicles.VehicleType = 'SUV';
-- GET ALL SALES INFO FOR SPECIFIC DEALER FOR A SPECIFIED DATE RANGE
SELECT Dealerships.Dealership_id, Dealerships.DealershipName, Dealerships.Address
FROM carDealership.Dealerships
JOIN Inventory ON Inventory.Dealership_id = Dealerships.Dealership_id
JOIN SalesContracts ON SalesContracts.Vin = Inventory.Vin
WHERE SalesContracts.Vin = 1010;