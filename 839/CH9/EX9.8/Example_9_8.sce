//clear//
clear;
clc;

//Example 9.8
//Given
D1 = 1; //[ft]
D6 = 6
Nre_i = 10^4;
Da = 4; //[in.]
t1 = 15; //[s]
P = 2; //[hp/gal]

//(a)
//Using Fig. 9.15 
//the mixing factor ntT is constant and time tT is asumed constant,
//speed n will be the same in both vessels.
//Using Eq.(9.24) with consant density
PbyD_ratio = (D6/D1)^2;
//The Power input required in the 6-ft vessel is then
Pin = 2*PbyD_ratio //[hp/1000gal]

//(b)
//Using Eq.(9.54) with same input power per unit volume in both vessels
n6byn1 = (D6/D1)^(2/3)
//blending in the 6-ft vessel would be
t6 = t1*n6byn1 // [s]
