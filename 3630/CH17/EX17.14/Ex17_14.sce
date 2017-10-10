clc;
Q=126;
Rw=25;
Rp=(Q^2)*Rw;
XL=3160;
rc=20000;
QL=rc/XL;
disp(' ',ceil(Rp/1000),"Rp=");//The answers vary due to round off error
disp(' ',QL,"QL=");//The answers vary due to round off error

