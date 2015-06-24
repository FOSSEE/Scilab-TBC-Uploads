                      //EXAMPLE 3-7  PG NO-176-177
Vab=400+%i*0;
Vbc=-200-%i*346.410;
R=100;
Ica=0;
Iab=Vab/R;
disp('i) CURRENT  (Iab) is  in rectangular form  =  '+string (Iab) +' A ');
Ibc=Vbc/R;
disp('i) CURRENT  (Ibc) is  in rectangular form  =  '+string (Ibc) +' A ');
Ia=Iab-Ica;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=Ibc-Iab;
disp('i) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
Ic=Ica-Ibc;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
