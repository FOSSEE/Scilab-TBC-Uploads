                  //EXAMPLE 3-53      PG NO-206-207
HP=2000;
Vp=2200;
E=0.93;
MI=(HP*735.5)/E;
disp('i) MOTOR INPUT  (MI) is  in rectangular form  =  '+string (MI) +' W ');
Ip=MI/[3*Vp*0.85];
disp('i) CURRENT  (Ip) is  in rectangular form  =  '+string (Ip) +' A ');
AC=Ip*0.85;
disp('i) ACTIVE CURRENT  (AC) is  in rectangular form  =  '+string (AC) +' A ');
RC=(Ip^2-AC^2)^0.5;
disp('i) REACTIVE CURRENT  (RC) is  in rectangular form  =  '+string (RC) +' A ');
LC=sqrt(3)*Ip;
disp('i) LINE CURRENT  (LC) is  in rectangular form  =  '+string (LC) +' A ');
ALC=LC*0.85;
disp('i)ACTIVE LINE CURRENT  (ALC) is  in rectangular form  =  '+string (ALC) +' A ');
RLC=(LC^2-ALC^2)^0.5;
disp('i) REACTIVE LINE CURRENT  (RLC) is  in rectangular form  =  '+string (RLC) +' A ');
