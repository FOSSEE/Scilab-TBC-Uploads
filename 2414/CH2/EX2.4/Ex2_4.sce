clc;

//page no 40
//problem 2.4
//all frequencies are in Hz
f=0;
f1=500;  //fundamental freq.
f2=1000;  f3=1500;  //harmonics
disp(f3,f2,f1,f,'(a)  The frequencies in signal are');
//for plot
fHz=[0:1600];
Cn=[5 zeros(1:f1-1) 8 zeros(f1+1:f2-1) 6 zeros(f2+1:f3-1) 3 zeros(f3+1:1600)]
clf
plot2d(fHz,Cn,[3],rect=[-0.5,0,1550,10])
xtitle('Linear amplitude spectrum','f,Hz','Cn(V)')
xgrid
disp('(c)  The required bandwidth is 1500 Hz');
