    //EXAMPLE 2-45  PG NO-92
I=10;                    //CURRENT 
R=5;                    //RESISTANCE
P=I*I*R;               //POWER
IL=250;                //IRON LOSS
Z=20;
r=5;
F=50;
W=2*%pi*F;
p1=750;
v=200;                       //voltage
L=(Z*Z-r*r)^0.5/W;             //iductance
cosQ=p1/(v*I);
disp(' power is = '+string(P)+' W')
disp(' inductance is = '+string(L)+' H');
disp(' cos Q is = '+string(cosQ)+' lagging');
