//Example 4.1;//normalised frequency,propagation constants and phase velocity
clc;
clear;
close;
format('v',5)
disp("part (a)")
n1=1.46;//core refrative index
di=7.2;//core diameter 
n=1.46;//core refrative index
d=1;//relative differnce
h=1.55 ;// in micro meter
v=((2*%pi*(di*10^-6)/2)*n*sqrt(2*(d/100)))/(h*10^-6);//normalised frequency parameter
disp(v,"normalised frequency parameter is")
disp("part (b)")
format('e',11)
b1=(2*%pi*n1)/(h*10^-6);// in m^-1
n2=n1-(d/100);//cladding refrative index
b2=(2*%pi*n2)/(h*10^-6);// in m^-1
bo1=0.82;//
b11=0.18;//
B01=(b2^2+(bo1*(b1^2-b2^2)))^(1/2);//
B11=(b2^2+(b11*(b1^2-b2^2)))^(1/2);//
disp("propogation constants are Bo1 "+string(B01)+" and B11 "+string(B11)+" ")
//propogation constants are  calculated wrong in the text bOOK
disp("part (c)")
format('e',9)
c=3*10^8;// in ms^-1
vp1=(2*%pi*c)/(h*10^-6*B01);//IN MS^-1
vp2=(2*%pi*c)/(h*10^-6*B11);//IN MS^-1
disp("phase velocity are (Vp)01  "+string(vp1)+" ms^-1 and (Vp)11 "+string(vp2)+" ms^-1 ")
