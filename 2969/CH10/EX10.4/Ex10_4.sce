clc
clear
//DATA GIVEN
p1=1;                           //suction pressure in bar
T1=20+273;                      //suction temperature in K
p2=6;                           //discharge pressure in bar
T2=180+273;                     //discharge temperature in K
N=1200;                         //speed of compressor in R.P.M.
Pshaft=6.25;                    //shaft power in kW
Ma=1.7;                         //mass of air delivered in kg/min
D=0.14;                         //diameter in m
L=0.1;                          //stroke in m
R=287;                          //in kJ/kgK

Vd=(%pi/4)*D^2*L*N;             //displacement volume for single acting compressor in m^3/min
FAD=Ma*R*T1/p1/10^5;            //m^3/min
ETAvol=FAD/Vd*100;              //actual volumetric efficiency

//(T2/T1)=(p2/p1)^((n-1)/n);
n=1/[1-(log(T2/T1)/log(p2/p1))];        //index of compression,n

IP=(n)/(n-1)*Ma/60*R/1000*T1*[(p2/p1)^((n-1)/n)-1];      //indicated power in kW

Piso=Ma/60*R/1000*T1*log(p2/p1);                         //isothermal power
ETAiso=Piso/IP*100;                                      //isothermal efficiency

ETAmech=IP/Pshaft*100;                                   //mechanical efficiency

ETAovr_iso=Piso/Pshaft*100;                              //overall isothermal eddiciency

printf(' (i) The actual Volumetric efficiency is: %2.2f percent. \n',ETAvol);
printf(' (ii) The Indicated Power, IP is: %1.3f KW. \n',IP);
printf('(iii) The Isothermal efficiency is: %2.2f percent.\n',ETAiso);
printf(' (iv) The Mechanical efficiency is: %2.1f percent.\n',ETAmech);
printf('  (v) The Overall isothermal efficiency is: %2.1f percent.\n',ETAovr_iso);

