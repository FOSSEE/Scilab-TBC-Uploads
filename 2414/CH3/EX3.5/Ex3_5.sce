clc;
clear all;
//chapter 3
//page no 86
//example 3.5
A=20;    //Volts
T=5*10^-3;    //period in seconds
tau=1*10^-3;   //pulse width in second
d=tau/T;        //duty cycle
f1=1/T;        //Fundamental frequency in Hz

//for plot
n=[-14:15];    //in Hz
Vf=[]
for i=1:length(n)
    if n(i)==0 then
        Vf(i*200)=A*d;
    else
       Vf(i*200)=A*d*sin(%pi*d*n(i))/(%pi*d*n(i)) 
    end
    //to get the magnitudes of components
    if Vf(i*200)<0 then
        Vf(i*200)=-Vf(i*200)
    end
  
end
f=-3000:3000-1
clf;
plot2d(f,Vf,[5],rect=[-3000,0,3000,5])
a=gca(); // Handle on axes entity
a.x_location = "origin"; 
a.y_location = "origin";

xtitle('Amplitude Spectrum','f,Hz','Vn');
xgrid
