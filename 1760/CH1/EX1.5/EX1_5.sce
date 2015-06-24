                    //EXAMPLE 1-5  PG NO-19
V1=230;  //VOLTAGE  ONE
P1=1000;   //POWER
R=V1*V1/P1;   //RESISTANCE OF HEATER
V2=210;  //VOLTAGE  TWO
P2=V2*V2/R;      //POWER OF HEATER WHEN VOLTAGE IS 210
R=(V1*V1)/P1                //Resistance
disp('i)RESISTANCE = '+string (R)+' ohm');
P2=(V2*V2)/R;                 //Power
disp('ii)POWER = '+string (P2)+' ohm');

