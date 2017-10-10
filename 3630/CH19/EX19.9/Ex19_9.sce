clc;
rf2=1000;
rf1=2000;
req=(rf2/(rf1+rf2));
UTP=req*9;
LTP=req*-9;
disp('V',UTP,"UTP=");//The answers vary due to round off error
disp('V',LTP,"LTP=");//The answers vary due to round off error
