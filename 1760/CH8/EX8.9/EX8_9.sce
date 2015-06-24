                 //EXAMPLE 8-9       PG NO-525
Ro=600;
Fc=3000;
L=Ro/(4*%pi*Fc);
disp('i) INDUCTANCE (L) is    =  '+string ([L]) +'  H ')
C=1/(4*%pi*Fc*Ro);
disp('ii) CAPACITOR (C) is    =  '+string ([C]) +'  F ')
Fo=2700;
m=sqrt(1-(Fo/Fc)^2);
disp('iii)  (m) is    =  '+string ([m]) +'   ');
X=(2*C)/m;
disp('iv) X (X) is    =  '+string ([X]) +' F  ');
Y=L/m;
disp('v) Y    is    =  '+string ([Y]) +' H  ');
Z=(4*m*C)/(1-m^2);                               //Z=4mC/1-m^2
disp('vi) Z   (Z) is    =  '+string ([Z]) +'  F ');
Z1=(4*m*L)/(1-m^2);                   //Z1=4mL/1-m^2
disp('vii)  (Z1) is    =  '+string ([Z1]) +' H  ')
X1=(2*L)/m;
disp('viii)  X1    (X1) is    =  '+string ([X1]) +' H  ')
Y1=C/m;
disp('ix) Y1  is    =  '+string ([Y1]) +' F  ')
