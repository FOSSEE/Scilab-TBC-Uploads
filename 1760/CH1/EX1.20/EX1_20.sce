                       //EXAMPLE 1-20   PG NO-24
A=20*10^-6;
L=30;
P20=1.72*10^-8;
R20=P20*L/A;
X0=0.00426;
I=5;
X20=X0/[1+(X0*20)];
R55=R20*(1+X20*(55-20));
P=I*I*R55;
disp('i)RESISTANCE = '+string (R20)+' ohm');
disp('i) ALPHA 20(X20)= '+string(X20)+' ohm');
disp('i)RESISTANCE = '+string (R55)+' ohm')
disp('i)POWER = '+string (P)+' w')
