/////Chapter 10 Properties Of Steam
////Example 10.16 Page No:197
///Find Enthalpy of superheated steam 
//Input data
clc;
clear;
P=15;                      //Absolute pressure in bar
//From steam table (pressure basis at 15 bar)
h=3250;                    //In KJ/Kg
ts=198.3;                  //In degree celsius   
hf=844.7;                  //In KJ/Kg
hfg=1945.2;                //In KJ/Kg
hg=2789.9;                 //In KJ/Kg
Cps=2.3;

//Calculation
tsup=(h-hg+(Cps*ts))/2.3, //Enthalpy of superheated steam in degree celsius
dos1=tsup-ts;              //Degree of superheated in degree celsius          
                         //The value of ts in not used according to data in book instead of ts=198.3 author used ts=165

//Output
printf('Enthalpy of superheated steam= %f degree celcius\n  ',tsup);
printf('Degree of superheated=%f degree celcius \n  ',dos1);
