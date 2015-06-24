 
Thalf= 2.69; //half life of gold,d
Lambda= 0.693/(Thalf*86400); //decay constant, s^(-1)
R= 200; //required activity, mCi
R= R*10^(-6); //converting to Ci
dN= R/(Lambda/(3.70*10^(10))); //atoms
Wgold= 10; //mass of foil, mg
u= 1.66*(10^(-27)); //atomic mass unit, kg
Mgold= 197; // u
n2= Wgold*10^(-6)/(Mgold*u); //total no. of atoms
phi= 2*10^(16); //flux, neutrons/m^2
CrossSection= 99*10^(-28); //m^2
dT= dN/(phi*n2*CrossSection);  //s
disp(dT,"The irradiation period required, in seconds, is: ")
 
//Result
//The irradiation period required, in seconds, is:    
//    409.89595  