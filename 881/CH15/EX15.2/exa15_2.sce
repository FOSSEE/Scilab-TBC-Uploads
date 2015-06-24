clc;
//Example 15.2
//Page No 616



//solution

Dt1=1;
Dt2=10;
n1=1;
n2=0.5;
At=5;
Lp=50;
Lf=3;
Pout=40;

//(a)

disp("(a)The antenna input power in dBm is ")

Pin=Pout-Lf;    

disp('dBm',Pin,"Pin = ");

disp("Radiated power in dBm is ");

N1=10*log10(n1);

Prad=Pin+N1;

disp('dBm',Prad,"Prad = ");

At1=Dt1*n1;

EIRP1=Prad+(10*log10(At1));

disp('dBm',EIRP1,"EIRP = ");

P1=EIRP1-Lp;

disp('dBm',P1,"P = ");

//(b)

disp("(b)The antenna input power in dBm is ")

Pin=Pout-Lf;    

disp('dBm',Pin,"Pin = ");

disp("Radiated power in dBm is ");

N2=10*log10(n2);

Prad=Pin+N2;

disp('dBm',round(Prad),"Prad = ");

EIRP2=Prad+(10*log10(Dt2));

disp('dBm',round(EIRP2),"EIRP = ");

P2=EIRP2-Lp;

disp('dBm',round(P2),"P = ");

//(c)

disp("(c)The antenna input power in dBm is ")

Pin=Pout-Lf;    

disp('dBm',Pin,"Pin = ");

disp("Radiated power in dBm is ");

N3=10*log10(n2);

Prad=Pin+N3;

disp('dBm',round(Prad),"Prad = ");

EIRP3=Prad+(10*log10(At));

disp('dBm',round(EIRP3),"EIRP = ");

P3=EIRP3-Lp;

disp('dBm',round(P3),"P = ");
