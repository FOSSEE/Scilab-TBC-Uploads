clc;
Rin=3300;
rf1=11000;
rf2=33000;
Vout1=-11;
Vout2=11;
UTP=-(Rin/rf1)*(Vout1+0.7);
LTP=-(Rin/rf2)*(Vout2-0.7);
disp('V',UTP,"UTP=");//The answers vary due to round off error
disp('V',LTP,"LTP=");//The answers vary due to round off error
