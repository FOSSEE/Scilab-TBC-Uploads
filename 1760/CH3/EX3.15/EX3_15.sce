                       //EXAMPLE 3-15  PG NO-185-186
Van=230.94+%i*0;
Vbn=-115.47-%i*200;
Vcn=-115.47+%i*200;
V1=10*10^3;
Ia=V1/Van;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
V2=4*10^3;
Ic=V2/Van;
disp('i) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
V3=6*10^3;
Ib=V3/Van;
disp('i) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
In=(Ia+Ib+Ic);
disp('i) CURRENT  (In) is  in rectangular form  =  '+string (In) +' A ');
W1=[V1+V2+V3]/2;
disp('iv)  Power (W1) is in rectangular form    =  '+string (W1) +'  W ');
