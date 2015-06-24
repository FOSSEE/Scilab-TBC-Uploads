                           //EXAMPLE 8-19            PG NO-534-535
Ro=600;                        //characteristics Impedance
Fc=1000;                       //cutt   of   frequency
L=Ro/(4*%pi*Fc);
disp('i) Inductance is    =  '+string ([L]) +'  H ');
C=1/[4*%pi*Fc*Ro];
disp('ii) Capacitance is    =  '+string ([C]) +'  F ');
m=0.2;
X=(2*C)/m;                      //X=2C/m;
disp('iii) X is    =  '+string ([X]) +'  F ');
Y=L/m;                        Y=L/m;
disp('iv)  Y is    =  '+string ([Y]) +'  H ');
Z=(4*m*C)/[1-m^2];
disp('v) Z   is    =  '+string ([Z]) +'  F ');
m1=0.6;
X1=(2*C)/m1;                      //X=2C/m;
disp('iii) X is    =  '+string ([X1]) +'  F ');
Y1=(2*L)/m1;                        Y1=L/m1;
disp('iv)  Y is    =  '+string ([Y1]) +'  H ');
Z1=(2*m1*C)/[1-m1^2];
disp('v) Z   is    =  '+string ([Z1]) +'  F ');
