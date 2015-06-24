          //EXAMPLE 5-65       PG NO-346
V1=5;
G1=1;
V2=5;
G2=(1/2);
V3=10;
G3=(1/4);
EV=(V1*G1+V2*G2+V3*G3)/(G1+G2+G3);               //EQUIVALENT VOLTAGE
ER=1/(G1+G2+G3);
I=(EV*ER)/(EV+ER);
disp('i) Euivalent Resistance (EV) is    =  '+string (EV) +'  V ');
disp('ii) Equivalent  Resistance (ER) is    =  '+string (ER) +'  ohms ');
disp('ii) CURRENT (I) is    =  '+string (I) +'  A ');
