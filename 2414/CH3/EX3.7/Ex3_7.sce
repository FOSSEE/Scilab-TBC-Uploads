clc;
clear all;
//chapter 3
//page no 89
//example 3.7
A=1;    //arbitrary vaule
T=(1+4)*10^-3;    //period in seconds
tau=1*10^-3;   //pulse width in second
fc=30*10^6;    //centre frequency in Hz
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
      
end
f=-3000:3000-1
f=f+fc;    //Shifting by fc
f=f*10^-6;   //in MHz
clf;
plot2d(f,Vf,[5])
xtitle('Amplitude Spectrum','f,MHz','Vn');
xgrid
