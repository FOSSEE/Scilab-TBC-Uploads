
E1=100+%i*0;
E2=43.30+%i*25
Z1=1+%i*3;
Z2=1-%i*3;
Z3=2+%i*4;
Z4=3-%i*3
Z5=1+%i*5;
Z6=2-%i*8;
Iab1=E1/((Z1+Z2)+((Z3*Z4)/(Z3+Z4)));
I2=E2/((Z5-Z6)+((Z3*Z1+Z2)/(Z3+Z1+Z2)));
Iab2=(I2*Z3)/(Z3+Z1+Z2)
disp('i) CURRENT (Iab1) is   =  '+string (Iab1)+'A ');
disp('i) CURRENT (I2) is   =  '+string (I2)+'A ');
disp('i) CURRENT (Iab2) is   =  '+string (Iab2)+'A ');

