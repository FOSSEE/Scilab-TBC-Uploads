/////////Chapter 10 Properties Of Steam
////Example 10.7 Page No:188
///Find Volume of wet steam
///#Input data
clc;
clear;
P=15;               //Absolute pressure in bar
//From steam table (pressure basis at 15 bar)
ts=198.3+273;       //In degree celsius
vg=0.1317;          //In m^3/Kg 
vf=0.001154;        //In m^3/Kg 
x=0.8;        
Tsup=300+273;       //Degree celsius


//Calculation
v=(1-x)*vf+x*vg;    //Volume of wet steam in m**3/Kg
vg=0.1317;          //Dry and saturated steam in m**3/Kg
vsup=vg*(Tsup/ts);  //Volume of superheated steam m**3/Kg 


///Output
printf('Volume of wet steam= %f m^3/Kg \n ',v);
printf('Dry and Saturated Steam= %f m^3/Kg \n ',vg);  
printf('volume of superheated steam= %f m^3/kg \n ',vsup);
