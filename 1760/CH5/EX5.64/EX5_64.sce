             //EXAMPLE 5-64   PG  NO-345-346
Z1=4+%i*6;
R1=1;
V=100;
ZTH=(Z1*R1)/(Z1+R1);
Pmax=[100/(ZTH+ZTH)]^2*[0.93*cos(-6.11)]
disp('i) IMPEDANCE (ZTH) is    =  '+string (ZTH) +'  ohms ');
disp('ii) POWER (Pmax) is    =  '+string ([Pmax]) +'  W ');
