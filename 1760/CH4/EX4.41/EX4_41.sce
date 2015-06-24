                                //EXAMPLE-4-41        PG NO-254
I2=0.5;
I3=1.5;
R=11/3;
V=I3*R;
disp(' VOLTAGE is = '+string(V)+' V');
R1=20/9;
Req=(R*R1)/(R+R1);
disp(' RESISTANCE is = '+string(Req)+' ohm');
I=V/Req;
disp(' CURRENT is = '+string(I)+' A');
