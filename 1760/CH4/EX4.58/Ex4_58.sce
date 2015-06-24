
// Example : 4.58
   
v1=233.73-%i*8.934;
vs=240+%i*0;
r1=0.6+%i*0.8;
i1=(vs-v1)/r1;
disp('the value of I1 is = '+string(i1)+' Amp');
r2=0.5+%i*0.866;
vs1=239.5-%i*14.359;
i2=(vs1-v1)/r2;
disp('the value of I1 is = '+string(i2)+' Amp');
r3=16+%i*12;
il=i1/r3;
disp('the value of I1 is = '+string(il)+' Amp');
