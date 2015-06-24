//clear//
clear;
clc;

//Exmple 10.1
//Given
T1 = 32; //[F]
T2 = 200; //[F]
k1 = 0.021; //[Btu/ft-h-F]
k2 = 0.032; //[Btu/ft-h-F]
A = 25; //[ft^2]
B = 6/12; //[ft] 
//average temperature and thermal condutivity of the wall
Tavg = (40+180)/2; //[F]
kbar = k1+(Tavg-T1)*(k2-k1)/(T2-T1); //[Btu/ft-h-F]
delta_T = 180-40; //[F]
//Using Eq.(10.5)
q = kbar*A*delta_T/B //[Btu/h]
