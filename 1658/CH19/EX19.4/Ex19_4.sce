clc;
//e.g 19.4
Vcc=12;
Rc=10*10**3;
Re=1*10**3;
Rb=500*10**3;
beta=50;
Ic=Vcc/(Re+(Rb/beta));
disp('mA',Ic*10**3,"Ic=");
Ie=Ic;
re=25/(Ie*10**3);
disp('ohm',re*1,"re=");
Ri=beta*re;
disp('ohm',Ri*1,"Ri=");
Ris=(Rb*Ri)/(Rb+Ri);
disp('ohm',Ris*1,"Ris=");
R0=Rc;
Av=R0/re;
disp(Av);
Av=Rc/Re;
disp(Av);