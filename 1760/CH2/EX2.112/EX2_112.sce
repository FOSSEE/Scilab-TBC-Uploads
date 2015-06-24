            //EXAMPLE 2-112        PG NO-148
I=5;
R=25;
Z=50;
Z1=40;
R1=[Z^2-R^2-1600]/50;
disp('i) RESISTANCE  (R1) is    =  '+string (R1) +' ohm ')
X1=[1600-R1^2]^0.5;
disp('ii) INDUCTANCE  (X1) is    =  '+string (X1) +' ohm ')
Pc=I*I*R1;
disp('iii)  Power (Pc) is     =  '+string (Pc) +'  W ');
P=I*I*(R+R1);
disp('iv)  Power (P) is    =  '+string (P) +'  W ');
