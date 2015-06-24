//Ex 6.10
//Obtain the Bode plot
clc;
H=syslin('c',10*(1+%s/2)/(%s*(1+%s/.1)*(1+%s/.5)*(1+%s/10)));
bode(H,0.01,100);