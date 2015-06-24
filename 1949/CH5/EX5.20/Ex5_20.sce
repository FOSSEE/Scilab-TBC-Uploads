//Chapter-5,Example 5_20,Page 5-34
clc()

//Given Values:
delt=1.4*10^-10        //uncertainity in time spent by nucleus in excited state
h=6.63*10^-34          //Planck's constant

//Calculations:

//using, delE*delt>= h/(2*%pi)
delE1= h/(2*%pi*delt)       //uncertaininty in its energy in excited state in joules
delE=delE1/(1.6*10^-19)     //uncertaininty in its energy in excited state in eV
printf('Uncertaininty in its energy in excited state is >=%.8f eV \n',delE)
