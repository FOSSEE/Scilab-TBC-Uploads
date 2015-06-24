                //EXAMPLE   5-26   PG NO-319-320
Z1=70.71+%i*70.71;
Z2=10+%i*5;
Z3=-%i*5;
Z4=%i*5;
Z5=5-%i*5;
X1=[Z2 Z3 Z1,Z3 10 0,0 Z4 0];
X2=[Z2 Z3 0,Z3 10 Z4,0 Z4 Z5];
X3=[0 Z3 0,0 10 Z4,Z1 Z4 Z5];
X4=[Z2 Z3 0,Z3 10 Z4,0 Z4 Z5];
I3=X1/X2;
I1=X3/X4;
disp('i) Current (I3) is   in polar  =  '+string (I3) +' A ');
disp('i) Current (I1) is   in polar  =  '+string (I1) +' A ');
