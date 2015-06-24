//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.8w
//calculation of total distance and number of trips

//given data
dcar=20//distance(in km) travelled by the car
vcar=40//speed(in km/h) of the car
vfly=100//speed(in km/h) of the fly

//calculation
tcar=dcar/vcar;//time(in h) taken by the car to cover given distance
tfly=tcar;
dfly=tfly*vfly;//distance(in m) travelled by the fly
//number of trips made by fly can be infinite

printf('total distance travelled by the fly is %3.2f km and number of trips made by fly can be infinite',dfly);
