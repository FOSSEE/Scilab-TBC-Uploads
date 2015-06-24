                  //EXAMPLE 5-62         PG NO-344-345
Z1=16+%i*0;
Z2=2+%i*1;
Z3=3-%i*1;
R=4;
I=Z1/[Z2+[(R*Z3)/(R+Z3)]];
disp(' Current is   = '+string(I)+'A');
IN=[I*Z3]/(R+Z3);
disp(' Current is   = '+string(IN)+'A');
ZN=[[Z3*Z2]/5]+R;
disp(' Impedance is   = '+string(ZN)+'A');
