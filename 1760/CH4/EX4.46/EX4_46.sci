                     //EXAMPLE 4-46           PG NO-258-259
X1=[10 -104-%i*200;0 205+%i*150];
X2=[200+%i*200 -104-%i*200;-104-%i*200 205+%i*150];
I1=det(X1/X2);
disp(' Current is  in polar form= '+string(I1)+' A');
X3=[200+%i*200 10;-104-%i*200 0];
X4=[200+%i*200 -104-%i*200;-104-%i*200 205+%i*150];
I2=det(X3/X4);
disp(' Current is in polar form = '+string(I2)+' A');
V=10;                               //VOLTAGE
P=V*5.1*10^-2;                       //POWERE
disp(' POWER is = '+string(P)+' W');
