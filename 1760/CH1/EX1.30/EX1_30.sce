                    //EXAMPLE 1-30            PG NO-28
Q=80*10^-4;   //COULUMB CHARGR
C=150*10^-6;
C1=100*10^-6;  //CAPACITANCE
C2=50*10^-6;
Va=Q/C1;
Vb=Q/C2;
E1=(0.5*C1*Va*Va)+(0.5*C2*Vb*Vb);    //ENERGY
E2=0.5*C*(Va+Vb)*(Va+Vb);
disp('i)variable = '+string (Va)+' ohm')
disp('i)variable = '+string (Vb)+' ohm')
disp('i)energy = '+string (E1)+' J')
disp('i)energy = '+string (E2)+' J')
