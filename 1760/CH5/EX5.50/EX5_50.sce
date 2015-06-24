      //EXAMPLE - 5-50    PG NO-338
V1=240;
V2=140;
V=40;
R1=2;
R2=8;
R3=30;
VTH=((V1/V)*R3)-V2;
RTH=R1+((R3*(R1+R2))/V)+0.5;
I=VTH/(RTH+V2);
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Reesistance (RTH) is    =  '+string (RTH) +'  ohms ');
disp('i) CURRENT (I) is    =  '+string (I) +'  A ');
