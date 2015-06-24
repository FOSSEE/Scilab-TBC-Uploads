//Chapter-5,Example 5_17,Page 5-33
clc()

//Given Values:
v=400                //velocity of electron in m/s
delv=0.01/100        //uncertainity in velocity
h=6.63*10^-34        //Planck's constant
m=9.11*10^-31        //mass of an electron

//Calculations:
p=m*v                //momentum of an electron
delp=p*delv          //uncertainity in the measured values of momentum

//using heisenberg's uncertainity formula
delx=h/(2*%pi*delp)    //accuracy in its position
printf('Accuracy in its position is >=%.6f m \n \n',delx)
