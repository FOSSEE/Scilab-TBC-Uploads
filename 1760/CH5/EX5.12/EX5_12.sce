           //EXAMPLE 5-12   PG NO304-305
I2=0.411+%i*0;
VTH=5+%i*0-(I2*5);
ZTH=1/(1+(1/2)+(1/5));
Iab=VTH/(ZTH+(2+%i*2));
disp('i) VOLTAGE (VTH) is in polar form   =  '+string (VTH)+'V ');
disp('i) IMPEDANCE (ZTH) is    in polar form =  '+string (ZTH)+'ohms ');
disp('i) Current (Iab) is   in polar form =  '+string (Iab)+'A ');
