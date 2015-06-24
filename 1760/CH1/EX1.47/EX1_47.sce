            //EXAMPLE 1-48 PG NO-39-40
R1=4;                      //Resistance
R2=4;                     //Resistance
R3=8;                       //Resistance
RA=(R1*R2)/(R1+R2+R3);
disp('i)RESISTANCE = '+string (RA)+' ohm');
RB=(R1*R3)/(R1+R2+R3);
disp('ii)RESISTANCE = '+string (RB)+' ohm');
RC=(R2*R3)/(R1+R2+R3);
disp('iii)RESISTANCE = '+string (RC)+' ohm')
