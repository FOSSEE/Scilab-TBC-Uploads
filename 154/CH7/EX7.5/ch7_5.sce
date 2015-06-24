clc
disp("Example 7.5")
printf("\n")

printf("Given")
disp("v(t)=cos5t+3sin(3t+45)")
//Finding the periods of individual terms
disp("Period of cos5t=2*%pi/5")
disp("Period of 3*sin(3t+45)=2*%pi/3")
//If T=2*%pi
T=2*%pi;
disp("Now T=5*T1=3*T2")
//Now the relation for T is the smallest common integral multiple of T1 and T2
printf("Period = %3.2fs\n",T)