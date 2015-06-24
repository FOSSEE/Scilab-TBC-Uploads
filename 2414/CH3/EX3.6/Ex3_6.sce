clc;
clear all;
//chapter 3
//page no 89
//example 3.6
A=1    //arbitrary value provided
Tau=10^-3    //in seconds
fc=30*10^6;  //centre frequency in Hz
//plot for amplitude spectum
f=-3/Tau:3/Tau;
Vf=[]
for i=1:length(f)
    if f(i)==0 then
        Vf=[Vf A*Tau];    //according to L'Hopitals rule sin(x)/x=1 at lim x->0
        else
            Vf=[Vf A*Tau*sin(%pi*f(i)*Tau)/(%pi*f(i)*Tau)]
end
end
f=f+fc   //shifting
f=f.*10^-6   //MHz
clf
plot2d(f,Vf,[5])

xtitle('Amplitude spectrum','f,MHz','Vrf(f)')
xgrid
