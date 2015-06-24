                                 //EXAMPLE 2-68     PG NO-109-110
V=100;
Y1=0.16+%i*0.12;
Y2=-%i*0.15;
I1=V*Y1;
disp('i)  CURRENT (I1) is  in polar form  =  '+string (I1) +' A ');
I2=V*Y2;
disp('ii)  CURRENT (I2) is  in polar form  =  '+string (I2) +' A ');
P=(V*I1*0.8)+(V*I2*0);
disp('iii)  Power (P) is  in polar form  =  '+string (P) +' W ');
I=I1+I2;
disp('ii)  CURRENT (I) is  in polar form  =  '+string (I) +' A ');
