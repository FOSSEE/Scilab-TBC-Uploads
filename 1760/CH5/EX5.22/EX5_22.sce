         //EXAMPLE 5-22       PG NO-315-316
I1=100;
I2=80;
I3=5;
R1=100;
R2=50;
R3=200;
IN=I1+I2-I3;
X=1/R1+1/R2+1/R3;                  //1/RN=X
RN=X;
VTH=IN*RN;
RTH=RN
disp('i) Voltage (VTH) is   =  '+string (IN) +'V ');
disp('i) Voltage (VTH) is   =  '+string (1/RN) +'V ');
disp('i) Voltage (VTH) is   =  '+string (VTH) +'V ');
disp('i) Voltage (VTH) is   =  '+string (RTH) +'V ');
