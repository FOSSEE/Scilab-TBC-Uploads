clc,clear
printf('Example 10.5\n\n')

wattage=500
efficiency=25// efficiency of each lamp
flux=wattage * efficiency //total flux emmited 

I_each = flux/(4*%pi)//intensity of each lamp
d_1=sqrt(3^2+5^2)
d_2=sqrt(4^2+5^2)

theta_1= acos(3/d_1)
theta_2= acos(4/d_2)

I_L1 =  cos(theta_1)*I_each / d_1^2//I_L1 is illumination due to L_1
I_L2 =  cos(theta_2)*I_each / d_2^2//I_L2 is illumination due to L_2

I_C= I_L1 + I_L2 //I_C is illumnation at C;C is midpoint
printf('Required illumination is %.2f lux',I_C)
