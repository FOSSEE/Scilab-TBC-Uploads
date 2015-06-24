clc
//initialization of variables
D=110/1000 // diameter of cylinder in m
V1=100e-6 // initial volume@ state 1 in m^3
T1=60 // initial temp @ state 1 in *C
T2=200 // final temo @ state 2 in *C
M=50 // weight of piston in kg
g=9.81 // gravitational accleration in m/sec^2
Patm=100000 // atmospheric pressure in Pa
A=%pi*(D^2)/4 // area of piston in m^2

// BALANCING THE FORCES To GET PRESSURE P
// M.g=P.A-Patm
P=Patm+(M*g/A) // atm pressure is added to get absolute pressure

v1=0.001017 // specific volume at 60*C and 0.15Mpa pressure
m=V1/v1; // mass of water in kg

// find volume at state 2 
v2=1.444 // specific volume of steam at 200*C and 0.15 MPa
V2=m*v2// final volume in m^3

W=P*(V2-V1)/1000; // work done divided by 1000 to get in kJ
printf("The work done is %.1f kJ",W)





