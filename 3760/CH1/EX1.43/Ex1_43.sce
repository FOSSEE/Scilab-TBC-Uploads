clc;
E=400; // supply voltage
l1=200; // load connected across 75% tapping
l2=400; // load connected between 25% and 100% tapping
t1=25; // 25% tapping point
t2=50; // 50% tapping point
t3=75; // 75% tapping point
V2=(t3/100)*E; // voltage across 200 ohm load
I2=V2/l1; // current through 200 ohm load
I1=(V2*I2)/E;
// from fig.(1.46 b), KCL at point d gives
idb=I2-I1;
// same secondary voltage is applied against load of 400 ohm
I2=V2/l2; // current through 400 ohm load
I1=(V2*I2')/E;
// from fig (1.46 c), KCL at point c gives 
ica=I2-I1;
// superimposing the currents of above results current in three portion of winding can be known
icd=ica;
disp('current in section cd of winding is')
printf('%f A\n',icd);
ibc=I1;  
disp('current in section bc of winding is')
printf('%f A\n',ibc);
iab=idb+I1;  
disp('current in section ab of winding is')
printf('%f A\n',iab);
