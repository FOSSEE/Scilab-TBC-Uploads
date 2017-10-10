clear;
clc;
//geometric constants
a=sqrt((5^2)+1);
b=sqrt(((4+1)^2)+(5^2));
h=10;
r=.02;
s1=4;
s2=6;
c=10.773;
ca=4*%pi*8.854*(10^(-12+9))*150;
cb=(((a^2)*(b^2)*10*4)/((r^3)*(c^2)*s2))^(1/3);
Cn=ca/log(cb);
mprintf(" capacitance to neutral is %.3f microF\n",Cn);
I=(2*%pi*50*Cn*10^(-3)*220)/(3^(1/2));
mprintf(" Line Charging Current is %.3f A\n",I);
Ip=I/2;
mprintf("Charging Current per conductor is %.3f A",Ip);

