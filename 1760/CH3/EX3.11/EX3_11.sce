                       //EXAMPLE 3-11   PG NO-181
                      
Vrn=230.94+%i*0;
Vyn=-115.47-%i*200;
Vbn=-115.47+%i*200;
Yr=-%i*0.05;
Yy=%i*0.05;
Yb=0.05;
Von=[(Vrn*Yr)+(Vyn*Yy)+(Vbn*Yb)]/(Yr+Yy+Yb);
disp('i) Voltage  (Von) is  in rectangular form  =  '+string (Von) +' V');
Vyo=Vyn-Von;
disp('i) Voltage  (Vyo) is  in rectangular form  =  '+string (Vyo) +' V');
Iy=Vyo*Yy;
disp('iii) CURRENT  (Iy) is  in rectangular form  =  '+string (Iy) +' A ');
