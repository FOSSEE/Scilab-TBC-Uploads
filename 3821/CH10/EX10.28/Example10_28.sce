/////////Chapter 10 Properties Of Steam
///Example 10.28 Page No:209
///Enthalpy after throttling
//Input data
clc;
clear;
P1=12;           //Throttled steam
x1=0.96;         //Dryness is brottled
x2=1;            //Constant enthalpy process
//From steam table at12 bar
ts=188;          //In degree celsius
hf=798.4;        //In KJ/Kg
hfg=1984.3;      //In KJ/Kg
hg=2782.7;       //In KJ/Kg


//Calculation
h1=hf+x1*hfg;    //Enthalpy of the steam  in KJ/Kg    
h2=h1;           //Enthalpy after throttling in KJ/Kg   

///Output
printf('Enthalpy of the steam=%f KJ/Kg \n ',h1);
printf('Enthalpy after throttlin= %f KJ/Kg \n',h2);
