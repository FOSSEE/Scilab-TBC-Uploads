                   //EXAMPLE 1-39    PG NO-32-33
V=440;               //voltage
V1=5;                  //voltage
R=40;            //resistance
V2=220;
V3=100;
Rv=(V3*R)/[V2-V3];            //insulation resistance
disp('i)Resistance (Rv) = ' + string (Rv)+' Kohm')
Ri=[Rv*(V-V1)]/V1;            //insulation resistance
disp('iii)Resistance(Ri) = '+string (Ri)+' Kohm')
