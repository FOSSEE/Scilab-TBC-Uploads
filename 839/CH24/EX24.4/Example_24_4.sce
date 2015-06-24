//clear//
clear;
clc;

//Example 24.4
//Given
msdot = 2800; //[lb/h]
Xa = 0.15;
Xb = 0.005;
Ti = 80; //[F]
To = 125; //[F]
Thb = 260; //[F]
Hb = 0.01; //[lb water/lb dry air]
G = 700; //[lb/ft^2-h]
Cps = 0.52; //[Btu/lb-F] 

//Solution
//Counter current operation will be used.
//Assuming
Nt = 1.5; //NTU
//From Fig. 23.2
Twb = 102; //[F]
//From Eq. (2.48)
Tha = (Thb-Twb)/exp(Nt)+Twb; //[F]
Tsb = To; //[F]
lambda = 1036; //[Btu/lb], at 102 F, from Appendix 7
Cpv = 0.45; //[Btu/lb-F], from Appendix 15
Cpl = 1.0; //[Btu/lb-F]
//From Eq.(24.9)
mvdot = msdot*(Xa-Xb); //[lb/h]
//The heat duty is found form substitution in Eq.(24.1)
qTdot = Cps*(To-Ti)+Xa*Cpl*(Twb-Ti)+(Xa-Xb)*lambda+Xb*Cpl*(To-Twb)+(Xa-Xb)*Cpv*(Tha-Twb); //[Btu/lb]
qT = qTdot*msdot; //[Btu/h]
//The flow rate of the entering air is found from a heat balance and the humid heat csb.
//From Fig. 23.2
csb = 0.245; //[Btu/lb-F],
mgdot = qT/(csb*(Thb-Tha)*(1+Hb)); //[lb/h of dry air]
//From Eq.(24.10), The outlet humidity
Ha = Hb+mvdot/mgdot; //[lb/lb]

//For a given flow rate, the cross-sectional area of the dryer must be
Ac = qT/(csb*(Thb-Tha))/G; //[ft^2]
//The dryer diameter is
D = (4*Ac/%pi)^0.5; //[ft]
delta_TL = ((Thb-Twb)-(Tha-Twb))/log((Thb-Twb)/(Tha-Twb)); //[F]
//Using Eq.(24.29), the dryer length
L = qT/(0.125*%pi*D*G^0.67*delta_TL); //[ft]
disp('respectively','ft',L,'ft',D,'Required diameter and length of the dryer is')
