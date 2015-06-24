                        //EXAMPLE 3-47   PG NO-202-203
Vab=212;
Vbc=212;
Vca=212;
Iab=10;
Ibc=5;
Ica=7.07;
P=[(Vab*Iab*0.707)+(Vbc*Ibc*0.707)+(212*7.07*0)];
disp('i) ACTIVE POWER  (P) is   =  '+string (P) +' W ');
Q=[(Vab*Iab*0.707)+(Vbc*Ibc*-0.707)+(212*7.07*-1)]
disp('ii)REACTIVE POWER  (Q) is   =  '+string (Q) +' vars ');
S=[P^2+(Q^2)]^0.5;
disp('i)  APPARENT POWER  (S) is   =  '+string (S) +' VA ');
