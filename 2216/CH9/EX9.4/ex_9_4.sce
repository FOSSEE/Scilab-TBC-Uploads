//Example 9.4:phase difference,additional phase difference and Vpi
clc;
clear;
close;
format('v',7)
disp("part (a)")
h=550;//nm
l=3;//cm
no=1.51;//
ne=1.47;//
dfi=((2*%pi*l*10^-2*(no-ne))/(h*10^-9));//
disp(dfi,"phase differnce is")
//phase difference is in the form of pi in the textbook
disp("part (b)")
no=1.51;//
r63=26.4*10^-12;//m/V
V=200;//
d=0.25;//cm
dfi=((%pi*r63*no^3*(V)*(l*10^-2))/(h*10^-9*d*10^-2));//
disp(dfi,"additional phase differnce is")
//additional phase difference is in the form of pi in the textbook
disp("part (c)")
r63=26.4*10^-12;//m/V
format('v',5)
V=200;//
d=0.25;//cm
dfi=((%pi*r63*no^3*(V)*(l*10^-2))/(h*10^-9*d*10^-2));//
vpi=((h*10^-9)/(no^3*r63))*(d/l);//V
disp(vpi,"Vpi in V is")
