// Chapter7
// Page.No-226
// Example7_3
//page 226
// Output waveform of zener limits Diodes
// Given
clc;
clear;
Rf=20*10^3;          //in Ohm
Ri=10*10^3;          //in Ohm
Av=-Rf/Ri;
Vin=4;          //in V
Vout=Av*Vin;
printf("\n Vout = %0.0f V(peak)",Vout);
Vzener=5.1;          //in V

Vlimit=(Vzener+0.7);
printf("\n Vlimit +_%.1f V",Vlimit);
//graph 

T0=4;
t=-5.99:0.01:6;
t_temp=0.01:0.01:T0/4;
s=length(t)/length(t_temp);
dx=[];
x=[];
for i=1:s
    if modulo(i,2)==1  then
        dx=[dx -ones(1,length(t_temp))];
        x=[x .1*t_temp($:-1:1)];
    else
        dx=[dx ones(1,length(t_temp))];
        x=[x .1*t_temp]; 
    end
end
clf();
k=-(-80*2*x)-8;   //function for output plot
x1=[]           //function for clipped output
for c=1:length(x)
    if k(c) < -5.8 then
        x1(c)=-5.8;
    else 
        if k(c)<5.8 then
        x1(c)=k(c);
    else 
        x1(c)=5.8
        end
    end
end
plot(t-1.5,-80*x+4,t-1.5,k,t-1.5,x1);
xtitle("Input(Blue)  /  Output  (Green/Red for clipped ) waveform");

xgrid;


