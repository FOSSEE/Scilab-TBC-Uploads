     //EXAMPLE 5-27  PG NO-321
Z1=(6-%i*2.41);       //Impedance
Z2=(0-%i*9.64);       //Impedance
Z3=4+%i*0;            //Impedance
Z4=2+%i*0;           //Impedance
Z5=0-%i*2.41;          //Impedance
Za=Z2/Z1;              //Impedance
Zb=(Z3*Z4)/Z1;          //Impedance
Zc=(Z4*Z5)/Z1;          //Impedance
disp('i) Impedance (Za) is   in polar  =  '+string (Za) +'  ohms ');
disp('ii) Impedance (Zb) is   in polar  =  '+string (Zb) +'  ohms ');
disp('iii) Impedance (Zc) is   in polar  =  '+string (Zc) +'  ohms ');

