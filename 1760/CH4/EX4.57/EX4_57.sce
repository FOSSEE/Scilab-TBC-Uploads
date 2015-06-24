                                      //EXAMPLE 4-57        PG N 265-266
Z1=[200 +%i*4;0 5+%i*10];
Z2=[2+%i*5 %i*4;%i*4 5+%i*10];
I1=det(Z1/Z2);
disp('i) Current (I1)   is     =  '+string (I1) +' A   ');
Z3=[2+%i*5 %i*4;%i*4 5+%i*10];
Z4=[2+%i*5 %i*4;%i*4 5+%i*10];
I2=det(Z3/Z4);
disp('ii) Current (I2)   is     =  '+string (I2) +' A   ');
