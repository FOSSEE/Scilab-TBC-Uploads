       //EXAMPLE 5-28   PG NO-322
Z1=0.6-%i*1.2;
Z2=0.6-%i*1.2;
Z3=1.2+%i*0.6;
Z=Z1+(((Z2+3)*(Z3+%i*3))/(Z2+3+Z3+%i*3));
disp('i) Impedance (Z) is   in polar  =  '+string (Z) +'  ohms ');
