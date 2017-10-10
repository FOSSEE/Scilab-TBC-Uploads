clc;
//ex3.15
IL=0.02; //Ampere
t=[0.0167 0.00833]; //seceond
c=0.0005; // Farad
Vr1=(IL*t(1,1))/c; //peakvolt
Vr2=(IL*t(1,2))/c; //peakvolt
disp('mVpp',Vr1*1000,"Vr1=");
disp('mVpp',Vr2*1000,"Vr2="); ////The answers vary due to round off error
