//Example 5.2
//Obtain the Bode plot
clc;
s=%s;
H=syslin('c',100*(1+s)/((10+s)*(100+s)));
bode(H,0.01,2000);