//Example 13//doppler shift and velocity
clc;
clear;
close;
h1=3737;//Å
h2=3700;//Å
ds=h1-h2;//Å
disp(ds,"doppler shift is ,(Å)=")
c=3*10^8;//m/s
v=((ds/h2)*c);//m/s
disp(v,"speed is ,(m/s)=")
//speed is  calculated wrong in the textbook
