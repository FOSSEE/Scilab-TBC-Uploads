//Chapter-5,Example 5_18,Page 5-33
clc()

//Given Values:
delx=10^-8             //maximum uncertainity in position of electron
h=6.63*10^-34          //Planck's constant
m=9.1*10^-31           //mass of an electron

//Calculations:
//using heisenberg's uncertainity formula
delp=h/(2*%pi*delx)    //minimum uncertainity in the measured values of momentum

delv=delp/m            //minimum uncertainity in the velocity of an electron
printf('Minimum uncertainity in the velocity of an electron is =%.0f m/s \n \n',delv)
