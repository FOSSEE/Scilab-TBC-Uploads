                             //EXAMPLE 1-16            PG NO-23
V=1;                    //ASSUMING
t=1;                                 //ASSUMING
R1=30;                       //RESISTANCE
R2=20;
R3=10;
E30=(V/R1)*t;                            //ENERGY AT 30 ohm RESISTANCE
disp('i)    ENERGY = '+string (E30)+' ');
E20=(V/R2)*t;                         //ENERGY AT 20 ohm RESISTANCE
disp('ii)  ENERGY = '+string (E20)+' ');
E10=(V/R3)*t;                          //ENERGY AT 10 ohm RESISTANCE
disp('iii)    ENERGY = '+string (E10)+' ');
TE=E30+E20+E10;                   //TOTAL ENERGY
disp('iv)    TOTAL ENERGY = '+string (TE)+' ');
PTE=(E30/TE)*100;                   //PERCENTAGE OF TOTAL ENERGY
disp('ii)    PERCENTAGE OF TOTAL ENERGY = '+string (PTE)+'% ');
