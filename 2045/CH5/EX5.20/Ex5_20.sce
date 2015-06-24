//pagenumber 300 example 20
clear
freque=6*10^6;//hertz
hfe=50;
r1=500;//ohm
g=0.04
rbb=100;//ohm


c1=10*10^-12;//farad
r=1000;//ohm
rbe=hfe/g;
ce=g/(2*3.14*freque);
c1=ce+c1*(1+g*r);
hie=rbb+rbe;
resist=(r1+rbb)*rbe/(r1+rbb+rbe);
frequ2=1/(2*3.14*resist*c1);
curgai=-hfe*r1/(r1+hie);
volgai=(-hfe*r)/(r1+hie);
q=volgai*frequ2;
disp("upper frequency voltage gain   =   "+string(abs(q))+"hertz");//correction in the book
q=curgai*frequ2;
disp("upper current gain   =   "+string(abs(q))+"hertz");
