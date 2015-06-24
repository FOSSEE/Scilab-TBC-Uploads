//clear//
clear;
clc;

//Example 8.1
//Given 
vdot = 40; //[gal/min]
pb = 50; //[lbf/in.^2]
Za = 4; //[ft]
Zb = 10; //[ft]
hfs = 0.5; //[lbf/in.^2]
hfd = 5.5; //[lbf/in.^2]
neta = 0.6;
rho = 54; //[lb/ft^3]
pv = 3.8; //[lbf/in.^2]
g = 9.8; //[m/s^2]
gc = 32.17 //[ft-lb/lbf-s^2]
hf = hfs+hfd; // [lbf/in.^2]
//(a)
//Using data from Appendix 5
Vb_bar = vdot/6.34; //[ft/s] 
//Using Eq.(4.32)

Wp_neta = ((14.7+pb)*144/rho)+(g/gc*10)+(Vb_bar^2/(2*gc))+(hf*144/54)-(14.7*144/54); // [ft-lbf/lb]
delta_H = Wp_neta;

//(b)
mdot = vdot*rho/(7.48*60); // [lb/s]
//Using Eq.(8.7), the input power is
Pb = mdot*delta_H/(550*neta) // [hp]

//(c) 
padash = 14.7*144/rho;
//The vapor pressure corresponding to a head
hv = pv*144/rho; // [ft-lbf/lb]
//friction in the suction line
hfs = 0.5*144/rho ; // [ft-lbf/lb]
//Using Eq.(8.7), value of available
NPSH = padash-hv-hfs-Za // [ft]
