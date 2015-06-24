              //EXAMPLE 1-48 PG NO-39-40
R1=6.8;                 //Resistance
R2=15;
R3=10;
RA=(R1*R2)/(R1+R2+R3);
disp('i)RESISTANCE = '+string (RA)+' ohm');
RB=(R1*R3)/(R1+R2+R3);
disp('ii)RESISTANCE = '+string (RB)+' ohm');
RC=(R2*R3)/(R1+R2+R3);
disp('iii)RESISTANCE = '+string (RC)+' ohm')
