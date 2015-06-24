//Chapter-5,Example 5_14_4,Page 5-37
clc()

//Given Values:
delx=10*10^-9          //uncertainity in position of electron
h=6.63*10^-34          //Planck's constant
m=9.1*10^-31           //mass of an electron
E=10^3*1.6*10^-19      //Energy of electron in joules

//Calculations:
p=sqrt(2*m*E)          //momentum of electron
//using heisenberg's uncertainity formula
delp=h/(2*%pi*delx)    //uncertainity in the momentum

P=delp/p*100           //percentage of uncertainity in momentum
printf('Percentage of uncertainity in momentum of electron is =%.5f percent \n',P)
