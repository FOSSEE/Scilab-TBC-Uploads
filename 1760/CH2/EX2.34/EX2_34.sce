                       //EXAMPLE 2-34          PG NO-85
V=80+%i*60;                  //voltage
I=-4+%i*10;              //current
Z=V/I;               //Impedance
PF=0.26;                    //power factor
P=V*I*PF;           //Power
disp(' IMPEDANCE   is in rectangular form = '+string(Z)+' ohm');
disp(' POWER  is in rectangular form   = '+string(P)+' W');
