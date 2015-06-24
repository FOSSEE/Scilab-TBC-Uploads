clc;
clear all;
//page no 54
//problem 2.9
f0=0;
f1=500;  //fundamental freq.
f2=1000;  f3=1500;  //harmonics

//Values from ex 2.4
C=[5 8 6 3]//  Values in Volts
//Values from ex 2.5
P=[5 6.4 3.6 .9];   //poweer in watts
clf;
// plot two sided linear amplitude spectrum
fHz=-1510:10^-2:1510;    //x-axis matrix
//Y-axis matrix
Cn=[C(1)]
for i=2:4
    Cn=[zeros(-500+10^-2:10^-2:0-10^-2) Cn zeros(0+10^-2:10^-2:500-10^-2)]
    Cn=[C(i)/2 Cn C(i)/2];
end
Cn=[zeros(-10+10^-2:10^-2:0) Cn zeros(0:10^-2:10-10^-2)]
subplot(211)
plot2d(fHz,Cn,[2],rect=[-2000,0,2000,6])
xtitle('Two-sided Linear amplitude spectrum','f,Hz','Vn(V)')
xgrid

// plot two power spectrum
fHz=-1510:10^-2:1510;    //x-axis matrix
//Y-axis matrix
Pn=[P(1)]
for i=2:4
    Pn=[zeros(-500+10^-2:10^-2:0-10^-2) Pn zeros(0+10^-2:10^-2:500-10^-2)]
    Pn=[P(i)/2 Pn P(i)/2];
end
Pn=[zeros(-10+10^-2:10^-2:0) Pn zeros(0:10^-2:10-10^-2)]
subplot(212)
plot2d(fHz,Pn,[6],rect=[-2000,0,2000,6])
xtitle('Two-sided power] spectrum','f,Hz','Pn(W)')
xgrid
