                             //EXAMPLE 4-52         PG NO-263
X=[(6+%i*2)  (100+%i*0);(-6-%i*3.32)   0];
X1=[(6+%i*2) (-6-%i*3.32); (-6-%i*3.32)  (16+%i*12)];
I2=det(X/X1);
disp('i) Current (I2)   is     =  '+string (I2) +' A   ');
V=10*I2;
disp('ii) VOLTAGE (V)   is     =  '+string (V) +' V   ');
