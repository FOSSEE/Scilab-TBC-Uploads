       //EXAMPLE 5-46   PG NO-335
R1=1;
R2=1;
R3=3;
RTH=R1+((R2*R3)/(R2+R3));
RL=R3/(RTH+RTH);
P=RL^2*RTH;
disp('i) Resistance (RTH) is    =  '+string (RTH) +'  ohms ');
disp('i) Resistance (RL) is    =  '+string (RL) +'  A ');
disp('i) Power (P) is    =  '+string (P) +'  W ');
