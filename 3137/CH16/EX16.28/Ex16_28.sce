//Initilization of variables
u=0.3 //coefficient of friction
m=70 //kg
g=9.8 //m/s^2
//Calculations
//CASE 1
//Using equations of motion
Na=m*g //N
ah=(u*Na)/m //m/s^2
//CASE 2
//Applying sum of moments equal to zero
F=(Na*0.3)/1.2 //N
a_h=F/m //m/s^2
//Result
//Intutive insights can be attained after we get these results
clc
printf('The value of Na is %f N and that of acceleration are \ntwo values 1)%f m/s^2 2)%f m/s^2 each for tipping and sliding respectively\n F is %f N',Na,ah,a_h,F)
