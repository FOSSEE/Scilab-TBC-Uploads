//Chapter-5,Example 5_19,Page 5-34
clc()

//Given Values:
delv=2*10^4            //uncertainity in velocity
h=6.63*10^-34          //Planck's constant
m=9.1*10^-31           //mass of an electron

//Calculations:
delp=m*delv            //uncertainity in the measured values of momentum

//using heisenberg's uncertainity formula
delx=h/(2*%pi*delp)    //accuracy in its position
printf('Minimum space required by electron to be confined in an atom is >=%.12f m \n \n',delx)
