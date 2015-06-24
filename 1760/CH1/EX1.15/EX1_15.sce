                           //EXAMPLE 1-15          PG NO-22
I1=0.04;               //CURRENT
I2=0.01;                  //CURRENT
V1=200;                   //VOLTAGE
R=V1/I1;                  //Resistance
disp('i)resistance  (R)  = '+string (R)+' ohm');
V2=10;                      //VOLTAGE
I3=50;                       //CURRENT
A=0.1;                //AMMETER RESISTANCE
R1=(V2/I3)-0.1;
disp('i)Resistance  (R1)  = '+string (R1)+' ohm');
V3=5000;
V4=250;
I=I3/V3;
disp('i)Current  (I)  = '+string (I)+' A');
R2=(V4-I3)/I;
disp('i)resistance  (R2)  = '+string (R2)+' ohm');
