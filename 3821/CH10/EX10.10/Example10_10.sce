/////////Chapter 10 Properties Of Steam
/////Example 10.10 Page No:191
////Find Enthalpy of superheated steam
//Input data
clc;
clear;
P1=10*10^5                  //Pressure of steam in bar
tsup1=300+273;                //Temperature of steam n degree celsius   
P2=1.4*10^5;                 //Internal energy of steam
x2=0.8;                       //Dryness fraction
Cps=2.3;
///from steam table properties of saturated steam (temp basis) 
///at 25 degree celsius and at 10 bar(pressure basis)
ts1=179.9+273;
vf=0.001127;                  //In m^3/Kg 
vg=0.1943;                    //In m^3/Kg 
hf=762.6;                     //In KJ/Kg
hfg=2013.6;                   //In KJ/Kg
hg1=2776.2;                   //In KJ/Kg
//at 1.4 bar;
ts=109.3;                     //In degree celsius
vf1=0.001051;                 //In m^3/Kg 
vg1=1.2363;                   //In m^3/Kg 
hf1=458.4;                    //In KJ/Kg
hfg1=2231.9;                  //In KJ/Kg
hg=2690.3;                    //In KJ/Kg

///Calculation
h1=hg1+Cps*(tsup1-ts1);       //Enthalpy of superheated steam in KJ/Kg
v1=vg*(tsup1/ts1);            //Volume of superheated steam in m**3/Kg
u1=h1-((P1*v1)/10^3);        //Internal energy in KJ/Kg
h2=hf1+x2*hfg1;               //Enthalpy of wet steam in KJ/Kg
Vwet=(1-x2)*vf1+x2*vg1;       //Volume of wet steam in m**3/Kg
u2=h2-((P2*Vwet)/10^3);      //Internal energy in KJ/Kg
DeltaU=u1-u2;                 //Change of Internal energy in KJ/Kg


//Output
printf('Enthalpy of superheated steam= %f KJ/Kg \n ',h1);
printf('Volume of superheated steam=%f m^3/kg \n ',v1);
printf('Internal energy= %f KJ/Kg \n ',u1);
printf('Enthalpy of wet steam= %f KJ/Kg \n ',h2);
printf('Volume of wet steam=%f m^3/kg \n ',Vwet);
printf('Internal energy= %f KJ/Kg \n',u2);
printf('Change of Internal energy= %f KJ/Kg \n ',DeltaU);
