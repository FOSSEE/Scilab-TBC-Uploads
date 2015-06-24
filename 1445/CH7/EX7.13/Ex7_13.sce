//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 13

disp("CHAPTER 7");
disp("EXAMPLE 13");
//230/115 V single phase transformer
//VARIABLE INITIALIZATION 
v1=230;                           //primary voltage in Volts
v2=115;
f=50;                             //Hz
Io=2;                            //in Amp no load current
pf0 =0.28;                       //lagging 
I2=20;                           //
pf2=0.8;                         //lagging

//SOLUTION
// 
//given power factors in primary and secondary
// I1.N1=I2.N2
phi0=acos(pf0);
phi2=acos(pf2);
//let Ix and Iy be the components of I0 and I'1 along X and Y axes
//then
//Ix=Io.sin phi0 + I'2.sin phi2
//
//Ix=Io.cos phi0 + I'2.cos phi2
I_dash_2=I2*v2/v1;
Ix=Io*sin(phi0)+I_dash_2*sin(phi2);
Iy=Io*cos(phi0)+I_dash_2*cos(phi2);
I1=sqrt(Ix^2+Iy^2);
disp(sprintf("The current taken by primary is %.1f Amp",I1));
disp(" "); 
// 
//END
