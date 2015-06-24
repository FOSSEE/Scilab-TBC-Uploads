////Ex 4.10
clc;
clear;
close;
format('v',5);
AOL=2*10^5;//unitless
Rio=2;//Mohm
Ro=75;//ohm
Ri=1;//kohm
Rf=10;//kohm
ACL=-AOL*Rf/(Rf+Ri+AOL*Ri);//unitless(Exact)
disp(ACL,"Exact close loop voltage gain");
ACL=-Rf/Ri;//unitless(Approximate)
disp(ACL,"Approximate close loop voltage gain");
Beta=Ri/(Ri+Rf);//unitless
SF=1+AOL*Beta;//unitless
Rif=Rio*10^6/SF;//ohm
disp(Rif,"Input impedence after feedback(ohm)");
