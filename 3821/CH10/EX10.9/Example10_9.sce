/////////Chapter 10 Properties Of Steam
///Example 10.9 Page No:190
////Find Volume of wet steam

//Input data
clc;
clear;
P=12*10^5;             //Absolute pressure
//From steam table (pressure basis at 12 bar)
ts=188+273;             //In degree celsius
vf=0.001139;            //In m**3/Kg 
vg=0.1632;              //In m**3/Kg 
hf=798.4;               //In KJ/Kg
hfg=1984.3;             //In KJ/Kg
hg=2782.7;              //In KJ/Kg
x=0.94;
Cps=2.3;
tsup=350+273;           //In degree celsius

//Calcuation
h=hf+x*hfg;             //Enthalpy of wet steam in KJ/Kg
v=(1-x)*vf+x*vg;        //Volume of wet steam m**3/Kg
u=h-((P*v)/10^3);      //Internal Energy in KJ/Kg
hg=2782.7;              //Enthalpy of dry & saturated steam in KJ/Kg
v1=vg;                  //Volume of dry & saturated steam  m**3/Kg
u1=hg-((P*vg)/10^3);   //Internal Energy in KJ/Kg       
h1=hg+Cps*(tsup-ts);    //Enthalpy of superheated steam in KJ/Kg
vsup=vg*(tsup/ts);      //Volume of superheated steam in m**3/Kg
u2=h1-((P*v)/10**3);    //Internal Energy in KJ/Kg


///Output
printf('Enthalpy of wet steam=%f KJ/Kg \n ',h);
printf('Volume of wet steam= %f m^3/Kg \n ',v);
printf('Internal Energy= %f KJ/Kg \n ',u);
printf('Enthalpy of dry & saturated steam=%f KJ/Kg \n',hg);
printf('Volume of dry & saturated steam=%f m^3/Kg \n ',v1);
printf('Internal Energy= %f KJ/Kg \n',u1);
printf('Enthalpy of superheated steam=%f KJ/Kg \n ',h1);
printf('Volume of superheated steam= %f m^3/kg \n',vsup);
printf('Internal Energy= %f KJ/Kg \n ',u2);
