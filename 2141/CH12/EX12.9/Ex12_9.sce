
clc
//initialisation of variables
h=-107532 //btu/lb mole
P=-439969//Btu/lb mole
W=2545*114.23//Btu/lb mole
//CALCULATIONS
Q=P+W-(h)//Btu/lb mole fuel
//RESULTS
printf('The heat transfer from the engine per pound mole of fuel=% f Btu/lb mole fuel',Q)
