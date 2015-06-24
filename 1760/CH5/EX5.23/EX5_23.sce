      //EXAMPLE 5-23    PG -NO 316-317
V11=-5;
V12=5;
V13=0;
G1=1/2200;
G2=1/3300;
G3=1/1500;
VO1=((V11*G1)+(V12*G2)+(V13*G3))/(G1+G2+G3);
V21=-5;
V22=10;
V23=0;
VO2=((V21*G1)+(V22*G2)+(V23*G3))/(G1+G2+G3);
disp('i) Voltage (VO1) is   =  '+string (VO1) +'V ');
disp('i) Voltage (VO2) is   =  '+string (VO2) +'V ');


