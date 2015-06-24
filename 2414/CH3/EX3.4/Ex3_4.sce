clc;
clear all;
//chapter 3
//page no 85
//example 3.4
A=20;    //Volts
T=1*10^-3;    //seconds
f=[-3/T:3/T];    //in kHz
Vf=[]
for i=1:length(f)
    if f(i)==0 then
        Vf=[Vf A*T];
    else
        Vf=[Vf A*T*sin(%pi*f(i)*T)/(%pi*f(i)*T)];
    
end
end
clf;
plot2d(f,Vf,[5])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";

xtitle('Amplitude Spectrum','f,Hz','V(f)');
xgrid
