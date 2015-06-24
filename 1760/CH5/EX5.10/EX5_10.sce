        //EXAMPLE  5-10 PG NO-303
I1=(58/21);
R1=2;
R2=5;
R3=15;
VTH=R1+I1;                  //Thevenins Voltage
RTH=(1*(R2+R3))/(1+(R2+R3));      //Thevenins   resistance
I=VTH/(10+RTH);             //CURRENT
P=I*I*10;                  //POWER
disp('i)Thevenins  voltage  (VTH) is   =  '+string (VTH)+'V ');
disp('i) Thevenins   resistance (RTH) is   =  '+string (RTH)+'ohm ');
disp('i) current (I) is   =  '+string (I)+'A ');
disp('i) power (P) is   =  '+string (P)+'W ');
