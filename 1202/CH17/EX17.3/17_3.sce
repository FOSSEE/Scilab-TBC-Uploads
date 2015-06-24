clear
clc

//Example 17.3
disp('Example 17.3')

z=%z;
Gz=(-0.3225*z^-2+0.5712*z^-3)/(1-0.9744*z^-1+0.2231*z^-2);
G=tf2ss(Gz)
n=10;
u=ones(1,n);
y=dsimul(G,u);
disp(y','y=')

mprintf('\n\nAlternatively the simulation can also be done\n...
using syslin(d,Gz) and flts(u,Gz)\n\n')

Gz2=syslin('d',Gz);
y2=flts(u,Gz2)
disp(y2','y2=')
