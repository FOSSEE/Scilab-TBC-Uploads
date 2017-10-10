clc;
rD=7580;
rS=2200;
Gm1=1/444;
Gm2=1/1000;
Avmax=rD/(rS+(1/Gm1));
Avmin=rD/(rS+(1/Gm2));
disp(' ',Avmax,"Avmax=")//The answers vary due to round off error
disp(' ',Avmin,"Avmin=")//The answers vary due to round off error



