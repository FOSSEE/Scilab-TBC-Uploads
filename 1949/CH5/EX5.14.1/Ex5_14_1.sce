//Chapter-5,Example 5_14_1,Page 5-36
clc()

//Given Values:
v=900                  //velocity of electron in m/s
delv=v*0.001/100       //uncertainity in velocity
h=6.63*10^-34          //Planck's constant
m=9.1*10^-31           //mass of an electron

//Calculations:
delp=m*delv            //uncertainity in the measured values of momentum

//using heisenberg's uncertainity formula
delx=h/(2*%pi*delp)    //uncertainity in its position
printf('Uncertainity with which position of electron can be located is >=%.5f m \n',delx)
