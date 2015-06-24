clc
//initialisation of variables
cc=12000 //btu/h
pi=1565 ///watts
ra=7 //btu/h/w
//CALCULATIONS
eer=cc/pi
p(1)=cc/ra
//RESULTS
printf('eer is %2f',eer)
printf('\npower consumption of first unit is %2fwatts',p(1))
