clc;
//e.g 10.1
Ic=10;
Vce=10;
hie=500;
hoe=10**-5;
hfe=100;
hre=10**-4;
gm=Ic/25;
disp('ohm',gm*1,"gm=");
rbe=hfe/gm;
disp('ohm',rbe*1,"rbe=");
rbb=hie-rbe;
disp(rbb);
gbc=hre/rbe;
disp('*10^-7',gbc*10**7,"gbc=");
rce=-1/((hoe-(1+hfe)*gbc));
disp('kohm',rce*10**-3,"rce=");
