        //EXAMPLE 5-34  PG NO-327-328
V=10;
R1=1;
R2=2;
R3=8.5;
VTH=V*(R1/R2);                      //Thevenins Voltage
RTH=R2+((R1*R1)/(R1+R1))+R2;       //Thevenins Resistance
Pmax=(5/9)^2*RTH;
TR=R1+((R1*R3)/(R1+R3));         //Total Resistance
TP=V*(V/TR);                    //Total Power
disp('i) Voltage (VTH) is    =  '+string (VTH) +'  V ');
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohms ');
disp('i) Power (Pmax) is    =  '+string (Pmax) +'  W ');
disp('i) Total resistance (TR) is    =  '+string (TR) +'  ohms ');
disp('i) Total Power (TP) is    =  '+string (TP) +'  W ');
