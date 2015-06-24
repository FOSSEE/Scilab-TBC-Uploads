clc
//initialisation of variables
p2=135 //bar pressure
p1=1 //bar pressure
x=5 //x=p2/p1
//CALCULATIONS
s=log(p2)/log(x)
rp=(p2/p1)^0.25
//RESULTS
printf('s is %2f',s)
printf('\nrp is %2f',rp)
disp('number of stages are 4')
disp('1st intermediate pressure is 3.4087 bar')
disp('2nd intermediate pressure is 11.619 bar')
disp('3rd intermediate pressure is 39.605 bar')
