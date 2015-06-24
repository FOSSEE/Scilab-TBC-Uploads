//clear//
clear;
clc;

//Example 10.2
//Given
delta1 = 4.5/12 ;//[ft]
k1 = 0.08; //[Btu/ft-h-F]
delta2 = 9/12; //[ft]
k2 = 0.8; //[ft]
Tin = 1400 //[F]
Tout = 170 //[F]
Rc = 0.5; //[ft^2-h-F/Btu]
//(a)
//Considering unit cross sectional area
A = 1; //[ft^2]
RA = delta1/k1; //[ft^2-h-F/Btu]
RB = delta2/k2; //[ft^2-h-F/Btu]
R = RA+RB; //[ft^2-h-F/Btu]
delta_T = Tin-Tout; //[F] overall temperature drop
//Using Eq.(10.9)
q = A*delta_T/R //[Btu/h]

//(b)
//The temperature drop in one series of resistances is to the
//individual resistance as the overall temperature drop is to the 
//overall resistance, or
delta_TA = RA*delta_T/R; //[F]
//Temperature at the inteface
Tf =  Tin-delta_TA  //[F]

//(c) The total resistance will now include contact resistance
R = R+Rc; //[ft^2-h-F/Btu]
//the heat loss from unit square area
q = delta_T/R //[Btu/h]
