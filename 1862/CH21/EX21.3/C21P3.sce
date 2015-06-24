clear
clc
//to find final pressure of gas

//Given:
//refer to figure 21-13 from page 488
//initial temperature of oxygen
Ti = 20//in degree celsius
//initial pressure of oxygen
pi = 15//in atm
//initial volume of oxygen
vi = 22//in liters
//final temperature of oxygen
Tf = 25//in degree celsius
//final volume of oxygen
vf = 16//in liters

//Solution:
//consider oxygen as ideal gas and applying equations of ideal gas
//final pressure of gas
pf = pi*((Tf+273)/(Ti+273))*(vi/vf)//in atm //taking temp. in kelvin
pf = round(pf)

printf ("\n\n Final pressure of gas pf = \n\n %2i atm" ,pf);
