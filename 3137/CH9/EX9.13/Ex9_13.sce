//Initilization of variables
mu_ca=0.3 //ceofficient of friction between copper block A and aluminium block B
mu_af=0.2 //coefficient of friction between aluminium block B and Floor
ma=3 //kg
mb=2 //kg
g=9.81 //m/s^2
//Calculations
//For A
//Taking sum of forces along X and Y direction
Na=ma*g //N
P=mu_ca*Na //N
//For B
//Taking sum of forces along X and Y direction
Nb=Na+mb*g //N
Fb=mu_ca*Na //N
//Now largest value of friction before slip is 
Fprimeb=mu_af*Nb //N
//Now as Fb<F'b hence initial assumption is incorrect and P=Fb
P=Fb //N
//Result
clc
printf('The value of force that will cause motion is %fN',P)
