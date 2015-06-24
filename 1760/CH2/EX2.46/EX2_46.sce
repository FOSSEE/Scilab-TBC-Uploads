                //Example  2-46    PG NO-92
Z=50+%i*49.95;                //IMPEDANCE
V=283;                      //VOLTAGE    
T=1;              //ASSUMING
i=(V/70.675)*[sin(100*%pi-44.97)];
disp('i)   Current (i) is  in polar form  =  '+string (i) +'  A'); 
P=(V/sqrt(2))*(4/sqrt(2))*(0.707);
disp('ii)   POWER (P) is    =  '+string (P) +'  W ');
