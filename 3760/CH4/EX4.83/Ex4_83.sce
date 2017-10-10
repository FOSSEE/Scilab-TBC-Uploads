clc;
// from fig 4.79
vo=206; // output voltage
il=8; // load current
ifl=0.2; // field current
Eo=280; // open circuit voltage for which field winding current is to be determined
r=0.5; // net resistance
n=800; // d-axis ampere turns
// with saturation ignored output voltage vd is given by vd=(n*if-10*il)K-il*r 
K=(vo+il*r)/(800*ifl-10*il); // slope of straight line in curve
ifl=Eo/(K*n);
printf('For given open circuit voltage field current is %f mA',ifl*1000);
