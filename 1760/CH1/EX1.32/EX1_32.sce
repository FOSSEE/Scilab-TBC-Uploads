   //EXAMPLE 1-32  PG NO-29
V=10;              //VOLTAGE
R1=2;
R2=8;            //RESISTANCE
I1=V/(R1+R2);   //CURRENT
I2=1.25;        //CURRENT THROUGH SECOND BRANCH
R=V/I2-5;
disp('i)CURRENT = '+string (I1)+' A')
disp('ii)RESISTANCE = '+string (R)+' ohm')
