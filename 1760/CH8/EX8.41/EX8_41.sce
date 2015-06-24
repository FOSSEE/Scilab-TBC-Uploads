              //EXAMPLE 8-41   PG NO-557
N=7.943;
Z=300;          //IMPEDANCE
R1=[(N-1)/N]*Z;
R2=Z/(N-1);
disp('i)   RESISTANCE (R1) is    =  '+string (R1) +'  ohm ');
disp('ii)   RESISTANCE (R2) is    =  '+string (R2) +'  ohm ');
