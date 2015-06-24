             //EXAMPLE 5-30    PG NO 324-325
V=25;                        //Voltage 
R1=50;                      //RESISTANCE
R2=35;                     //RESISTANCE
R3=60;                    //RESISTANCE
R4=10;
VTH=V-(R1*(R2/R3));      //THEVENINS VOLTAGE
RTH=(R1*R4)/R3;
I40=-(VTH/(40+RTH));
V40=40*I40;
disp('i) Impedance (VTH) is     =  '+string (VTH) +'  V ');
disp('i) Impedance (RTH) is     =  '+string (RTH) +'  ohm ');
disp('i) Impedance (I40) is     =  '+string (I40) +'  A ');
disp('i) Impedance (V40) is     =  '+string (V40) +'  V '); 
