      //EXAMPLE 1-6   PG NO-19-20
I=12;  //CURRENT
V=230;  //VOLTAGE
P=1000;  //POWER
T=3;  //TIME
S=3600;
E=(I*V/P)*T;  //ENERGY USED
Q=I*T*S;  //QUANTITY OF ELECTRICITY USED
IC=6.24*10^18; 
N.C=IC*Q;  //NUMBER OF ELECTRON
R=I*V;  //RATE OF ENERGY
disp('i) ENERGY = '+string (E)+' KWh');
disp('ii) QUANTITY = '+string (Q)+' C');
disp('iiI) NUMBER OF ELECTRON = '+string (N.C)+' ');
disp('iiII) RATE OF ENERGY = '+string (R)+' W');
