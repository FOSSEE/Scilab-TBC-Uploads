                       //EXAMPLE 3-8   PG NO-177
Za=10-%i*8;
Zb=12+%i*0;
Zc=8+%i*10;
Van=230.94+%i*0;
Vbn=-115.47-%i*200;
Vcn=-115.47+%i*200;
Ia=Van/Za;
disp('i) CURRENT  (Ia) is  in rectangular form  =  '+string (Ia) +' A ');
Ib=Vbn/Zb;
disp('ii) CURRENT  (Ib) is  in rectangular form  =  '+string (Ib) +' A ');
Ic=Vcn/Zc;
disp('iii) CURRENT  (Ic) is  in rectangular form  =  '+string (Ic) +' A ');
In=Ia+Ib+Ic;
disp('iv) CURRENT  (In) is  in rectangular form  =  '+string (In) +' A ');

P=(230.94*18.028*0.78)+(230.94*19.245)+(230.94*18.028*0.62)

disp('v) POWER  (P) is  in rectangular form  =  '+string (P) +' W ');
