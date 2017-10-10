clc;
Rin=20000;
rf=100000;
Vout1=-12;
Vout2=12;
Vin=2.4;
UTP=-(Rin/rf)*Vout1;
LTP=-(Rin/rf)*Vout2;
Vrin=(Vin-Vout1)*(Rin/(Rin+rf));
disp('V',UTP,"UTP=");//The answers vary due to round off error
disp('V',LTP,"LTP=");//The answers vary due to round off error
disp('V',Vrin,"Vrin=");//The answers vary due to round off error



