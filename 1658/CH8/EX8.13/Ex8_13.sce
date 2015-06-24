clc;
//e.g 8.13
Icbo=10*10**-6;
beta=50;
//Value of collector current when Ib=0.25*10**-3;
 Ib=0.25*10**-3;
 Ic=(beta*Ib)+(1+beta)*Icbo;
 disp('mA',Ic*10**3,"Ic=");
 //Value of new collector current if temperature rises to 50 degree
 t1=27;
 t2=50;
 Icbo50=Icbo*2^((t2-t1)/10);
 disp('microA',Icbo50*10**6,"Icbo50=");
 //collector current at 50 degree
 Ic=beta*Ib+(1+beta)*Icbo50;
 disp('mA',Ic*10**3,"Ic=");
