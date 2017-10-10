clc;
yos=0.00005;
rd=1/yos; //minimum value
Rd=1000;
Zout=(Rd*rd)/(Rd+rd);
disp('Ohm',Zout,"Zout=")//The answers vary due to round off error
