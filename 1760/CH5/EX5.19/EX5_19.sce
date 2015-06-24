       //EXAMPLE -19 PG NO-312
V=360;
R1=150;
R2=30;
Pm=900;
RL=25;
VTH=(V*R1)/(R1+R2);
RTH=(R1*R2)/(R1+R2);
TR=30+((R1*RL)/(R1+RL));         //total resistance
I=V/TR;                          //Current supplied by battery
P=V*7;                        //Power  supplied by battery
%PL=Pm*100/P                       //Percentage of power delivered to load
disp('i) Voltage (VTH) is   =  '+string (VTH)+'V ');
disp('i) Resistance (RTH) is   =  '+string (RTH)+'  ohms ');
disp('i) Total resistance (TR) is   =  '+string (TR)+' ohms');
disp('i) Current (I) is   =  '+string (I)+' A ');
disp('i) power (P) is   =  '+string (P)+' W ');
disp('i) Percentage of power (%PL) is   =  '+string (%PL)+' % ');

