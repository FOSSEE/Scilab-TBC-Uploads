      //EXAMPLE 2-29  PG NO=77-78
V=230;
F=50;       //Frequency
C=10*10^-6;    //Capacitor
Xc=1/(%pi*2*F*C);
Bc=1/Xc;
I=V/Xc;                       //susceptance  current
disp(' Xc  is    = '+string(Xc)+' ohms');
disp(' Bc  is    = '+string(Bc)+' siemens');
disp(' Current  is    = '+string(I)+' A');

