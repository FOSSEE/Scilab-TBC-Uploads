////Ex 4.2
clc;
clear;
close;
format('v',6);
AOL=2*10^5;//unitless
Ri=1.5;//kohm
Rf=12;//kohm
Rio=1;//Mohm
Ro=100;//ohm
fo=5;//Hz
Beta=Ri/(Ri+Rf);//unitless
SF=(1+AOL)*Beta;//unitless
ACL=AOL/SF;//unitless
disp(ACL,"Value of ACL");
//In case of ideal opamp
ACL=1+Rf/Ri;//unitless
disp(ACL,"In case of ideal opamp, Value of ACL");
Rif=Rio*SF;//kohm
disp(Rif,"Value of Rif(Mohm)");
disp("This is a large value can be assumed as infity resistance.");
format('v',5);
Rof=Ro/SF;//mohm
disp(Rof*1000,"Value of Rof(mohm)");
fodash=SF*fo;//Hz
disp(fodash/1000,"Bandwidth with feedback, fo_dash(kHz)");
//Answer for Rif in the book has mistake of unit.
