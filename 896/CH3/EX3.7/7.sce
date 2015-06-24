clc
//Example 3.7
//calulate the time required
p_initial=1;//atm pressure initially
p_final=0.0001;//atm pressure finally
V=10;//ft^3 volume of system
q=1;//ft^3/min vol. flow rate
t=(V/q)*log(p_initial/p_final)//min
printf("The time required is %f min",t);