           //EXAMPLE 5-13  PG NO-305
Z1=10+%i*0;
Z2=-%i*5;
Z3=3+%i*4;
Z4=3-%i*4;
Z5=10+%i*2.5;
VTH=(Z1*Z2)/(Z3+Z2);
ZTH=2+((20-%i*15)/(3-%i*1));
ZL=VTH/(ZTH+Z5);
disp('i) VOLTAGE (VTH) is   =  '+string (VTH)+'V ');
disp('i) IMPEDANCE (ZTH) is   =  '+string (ZTH)+'ohm ');
disp('i) IMPEDANCE (ZL) is   =  '+string (ZL)+'A ');
