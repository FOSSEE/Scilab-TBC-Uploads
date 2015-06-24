                                   //EXAMPLE 3-9     PG NO-178-179
Z1=10+%i*0;
Z2=13+%i*7.5;
Z3=-13+%i&7.5;
Z4=8.66-%i*5;
X=[Z1+Z2 Z3;Z3 Z2+Z4];
Z5=-104+%i*180.13;
Z6=280+%i*0;
Y=[Z5 Z3;Z6 Z2+Z4];
I1=det(Y/X);
disp('i)   Current (I1) is    =  '+string (I1) +' A  ');
