                          //EXAMPLE 3-28   PG NO-191
Van=230.94+%i*0;
Vbn=-115.47-%i*200;
Vcn=-115.47+%i*200;
Za=12-%i*16;
Zb=12+%i*0;
Zc=8+%i*6;
Ia=Van/Za;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=Vbn/Zb;
disp('i) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
Ic=Vcn/Zc;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
NI=-(Ia+Ib+Ic);
disp('i)NEUTRAL CURRENT  (NI) is  in rectangular form  =  '+string (NI) +' A ');
P=(230.95*11.55*0.6)+(230.95*19.25*1)+(230.95*23.095*0.8);
disp('iv)  Power (P) is     =  '+string (P) +'  W ');
