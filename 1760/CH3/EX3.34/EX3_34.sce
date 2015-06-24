                       //EXAMPLE 3-34       PG NO-194
Vp=230.94;
Van=230.94+%i*0;
Vbn=-115.47-%i*200;
Vcn=-115.47+%i*200;
Z=8-%i*10;
Ia=Van/Z;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=Vbn/Z;
disp('ii) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
Ic=Vcn/Z;
disp('iii) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
S=sqrt(3)*400*18.03;
disp('iv)  APPARENT POWER (S) is    =  '+string (S) +'  VA ');
P=S*0.62;
disp('v)  Power (P) is    =  '+string (P) +'  W ');
Q=S*-0.8;
disp('vi)  Power (Q) is    =  '+string (Q) +'  vars ');


