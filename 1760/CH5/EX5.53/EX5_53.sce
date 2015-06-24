              //EXAMPLE 5-53   PG NO-339
R1=16;
R2=8;
R3=12;
Rd=(R1*R2)/(R1+R2+R1);
Rb=Rd;
Rc=(R1*R1)/(R1+R1+R2);
V=180;
VTH=[180/(R1+Rd+Rc)]*Rc;
RTH=R3+[((Rc*(R1+Rd)))/(R1+Rc+Rd)]+Rd;
disp('i) Resistance (Rd) is    =  '+string (Rd) +'  ohms ');
disp('i) Resistance (RC) is    =  '+string (Rc) +'  ohms ');
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohms ');
