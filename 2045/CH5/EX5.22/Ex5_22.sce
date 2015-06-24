//example 22
clear
rb1=7.5*10^3;//ohm
rb2=6.8*10^3;//ohm

rb3=3.3*10^3;//ohm
re=1.3*10^3;//ohm
colres=2.2*10^3;//ohm
beta1=120;
vcc=18;//volt
vb1=rb3*vcc/(rb3+rb2+rb1);
ie1=(vb1-0.7)/(re);
re1=0.026/ie1;
re2=0.026/ie1;
volgai=colres/re2;
disp("voltage gain   =   "+string((volgai)));



