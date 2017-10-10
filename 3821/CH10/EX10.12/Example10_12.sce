/////////Chapter 10 Properties Of Steam
/////Example 10.12 Page No:194
///Entropy of 1.5Kg of superheated steam

//Input data
clc;
clear;
m=1.5;                  //Entropy of the steam
P=10*10^5;             //Absolute pressure in bar
//From steam table properties of saturated steam 
///(pressure basis)at 10 bar
ts=179.9+273;           //Indegree celsius
vf=0.001127;            //In m**3/Kg
vg=0.1943;              //In m**3/Kg
hf=762.6;               ///In KJ/Kg
hfg=2013.6;             //In KJ/Kg
hg=2776.2;              //In KJ/Kg
Sf=2.1382;              //In KJ/KgK
Sfg=4.4446;             //In KJ/KgK
Sg=6.5828;              //In KJ/Kg
Cps=2.3;
tsup=250+273;


///Calculation
//(1)Enthalpy of dry and saturated steam 

h=hg;                   //Enthalpy of dry and saturated steam 
EODS=hg*m;              //Enthalpy of 1.5Kg of dry and saturated steam 
v=vg;                   //volume of dry and saturated steam
u=h-((P*v)/10^3);      //Internal Energy
IES=u*m;                //Internal energy of the steam
s=6.5858;               //Entropy of dry and saturated steam
EODSS=s*m;              //Entropy of 1.5Kg dry and saturated steam
x=0.75;
//(2)Enthalpy of wet steam
h1=hf+x*hfg;            //Enthalpy of wet steam
EWS=h1*m;               //Enthalpy of1.5Kg of wet steam
Vwet=x*vg;              //Volume of steam
u1=h1-((P*Vwet)/10^3); //Internal energy 
IES1=u1*m;              //Internal energy of1.5Kg of the steam
s1=Sf+x*Sfg;            //Entropy of wet steam
EWS1=s1*m;              //Entropy of1.5Kg of wet steam

///(3)Enthalpy of superheated steam
h2=hg+Cps*(tsup-ts);    //Enthalpy of superheated steam
EOSHS=h2*m;             //Enthalpy of 1.5Kg of superheated steam
Vsup=vg*(tsup/ts);      //Volume of superheated steam
u2=h2-((P*Vsup)/10^3); //Internal energy
IES2=u2*m;              //Internal energy of 1.5Kg of the steam
s2=Sg+Cps*(log(tsup/ts));//Entropy of superheated steam
EOSHS1=s2*m;            //Entropy of 1.5Kg of superheated steam

///Output
printf('Enthalpy of dry and saturated steam= %f KJ/Kg \n  ',h);
printf('Enthalpy of 1.5Kg of dry and saturated steam= %f KJ \n ',EODS);
printf('volume of dry and saturated steam= %f m^3/Kg \n ',v);
printf('Internal Energy= %f KJ/Kg \n  ',u);
printf('Internal energy of the steam= %f KJ \n  ',IES);
printf('Entropy of dry and saturated steam = %f KJ/KgK \n ',s);
printf('Entropy of 1.5kg of dry and saturated steam= %f KJ/K \n  ',EODSS);

printf('Enthalpy of wet steam= %f KJ/Kg \n ',h1);
printf('Enthalpy of1.5Kg of wet steam=  %f KJ \n ',EWS);
printf('Volume of steam= %f m^3/Kg \n',Vwet);
printf('Internal energy= %f KJ/Kg \n  ',u1);
printf('Internal energy of1.5Kg of the steam= %f KJ \n  ',IES1);
printf('Entropy of wet steam= %f KJ/KgK \n  ',s1);
printf('Entropy of 1.5Kg of wet steam= %f KJ/K \n  ',EWS1);

printf('Enthalpy of superheated steam= %f KJ/Kg \n  ',h2);
printf('Enthalpy of 1.5Kg of superheated steam= %f KJ \n  ',EOSHS);
printf('Volume of superheated steam= %f m^3/Kg \n',Vsup);
printf('Internal energy= %f \n  ',u2);
printf('Internal energy of1.5Kg of the steam= %f KJ \n  ',IES2);
printf('Entropy of superheated steam= %f KJ/KgK \n  ',s2);
printf('Entropy of 1.5Kg of superheated steam= %f KJ/K \n  ',EOSHS1);
