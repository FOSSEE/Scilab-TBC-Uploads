//clear//
clear;
clc;

//Example 23.3
//Given
Hair_in = 0.022;
Tair_inpre = 70; //[F]
mdot = 15000; //[lb/h]
//Solution
//Using Fig. 23.10
Tair_inreh = 85; //[F]
Tair_outreh = 130; //[F]
Hin = 0.0030;
hya = 85;
Ts = 81; //[F] 
Tair_outpre = 168; //[F]
humid_heat1 = 0.241; //[Btu/lb-F]
//Heat required to preheat the air is
Qpre = humid_heat1*mdot*(Tair_outpre-Tair_inpre); //[Btu/h]
humid_heat2 = 0.250; //[Btu/lb-F]
//Heat required in the reheater is
Qreh = humid_heat2*mdot*(Tair_outreh-Tair_inreh); //[Btu/h]
//Total heat required
Qt = Qpre+Qreh; //[Btu/h]
//To caluculate the volume of the sprqy chamber, Eq.(23.41) may
//be used. The average humid heat is
csbar = (humid_heat1+humid_heat2)/2; //[Btu/lb dry air-F]
//Substituing in Eq.(23.41) gives
VT = log((Tair_outpre-Ts)/(Tair_inreh-Ts))*mdot*csbar/hya; //[ft^3]
disp('ft^3',VT,'The volume of the spray chamber is')
