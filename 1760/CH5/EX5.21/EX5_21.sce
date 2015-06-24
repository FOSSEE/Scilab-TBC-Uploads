       //EXAMPLE 5-21 PG NO -313-314
Z1=8.66+%i*5;
Z2=%i*1;
VTH=Z1-(Z1-1)*0.9;
ZTH=Z2+((9*1)/(9+1));
I=VTH/((0.9+%i*1)+(0.9-%i*1));
P=1.02^2*0.9;
disp('i) Voltage (VTH) is   =  '+string (VTH) +' V ');
disp('i) Impedance(ZTH) is   =  '+string (ZTH) +' ');
disp('i) Current (I) is   =  '+string (I) +'A ');
disp('i) Power (VTH) is   =  '+string (P) +' W ');
