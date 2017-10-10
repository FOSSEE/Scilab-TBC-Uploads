//CHAPTER 7- SINGLE PHASE TRANSFORMER
//Example 13

disp("CHAPTER 7");
disp("EXAMPLE 13");

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
phi0=acos(pf0);
phi2=acos(pf2);
I_dash_2=I2*v2/v1;
Ix=Io*sin(phi0)+I_dash_2*sin(phi2);
Iy=Io*cos(phi0)+I_dash_2*cos(phi2);
I1=sqrt(Ix^2+Iy^2);
disp(sprintf("The current taken by primary is %f Amp",I1));
disp(" "); 
// 
//END
