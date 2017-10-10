//chapter 16 Ex 3
clc;
clear;
close;
//let pipes be A and B
t12=12; //time taken by A and B to fill tank together
AB1hour=1/t12;    //part filled by both in 1 hour
//Let reservoir be filled by pipe 1 in x hours, thus other in (10+x)hours, thus the equation that is formed is (1/x)+1/(10+x)=1/12; on solving we get
mycoeff=[-120 -14 1];
p=poly(mycoeff,"x","coeff");
r=roots(p);
v=int32([20 -6]);
a=v(1); b=v(2);
if a>0 then mprintf("Thus the time taken by both pipes individually are %d hours and %d hours respectively to fill the tank",a,a+10); 
end

