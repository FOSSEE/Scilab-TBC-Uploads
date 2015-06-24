   //EXAMPLE 3-5 PG NO-175
Pm=6000;
Qm=8000;
Z=16-%i*12;
V=220;
PC=V/Z;
PL=3*V*11*0.799;
QL=3*V*11*(-0.6);
P=Pm+PL;
Q=Qm+QL;
PF=cos(1/tan(Q/P));
IL=P/(sqrt(3)*V*0.9555);
disp('i) Phase current   =  '+string (PC)+'A ');
disp('i) PL   =  '+string (PL)+'W ');
disp('i) QL   =  '+string (QL)+'Vars ');
disp('i) Active power   =  '+string (P)+'W ');
disp('i) Reactive Power   =  '+string (Q)+'Vars ');
disp('i) Power factor   =  '+string (PF)+'lagging ');
disp('i)  line current (IL)  =  '+string (IL)+'A ');
   
