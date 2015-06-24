        //EXAMPLE5-45  PG NO-334-335
R1=10;
R2=5;
V=15;
Vb=9;
Va=(V*R2)/(R1+R2);
Vba=Vb-Va;
RTH=(R1*R2)/(R1+R2);
VTH=Vba;
Iba=VTH/(RTH+Vba);
disp('i) Voltage (Va) is    =  '+string (Va) +'  V ');
disp('i) Voltage (Vba) is    =  '+string (Vba) +'  V ');
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) REsistance (RTH) is    =  '+string (RTH) +'  ohms ');
disp('i) Current (Iba) is    =  '+string (Iba) +'  A ');
