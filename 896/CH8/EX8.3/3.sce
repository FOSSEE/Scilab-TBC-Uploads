clc
//Example 8.3
//Calculate the temperature of the gas where is mach number is 2
Ma=2//dimentionless (Mach number)
k=1.4//dimentionless
T1=528//R (Rankine temperature scale)
T2=T1/((Ma^2*(k-1)/2)+1)//R (Rankine temperature scale)
printf("The temperature of the gas when mach number is 2 is %f R",T2);