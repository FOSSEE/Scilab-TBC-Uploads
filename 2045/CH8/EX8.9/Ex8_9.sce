//pagenumber 406 example 9
clear
u=50;
rd=10*10^3;//ohm
cgs=5*10^-12;//farad
cgd=2*10^-12;//farad
cds=2*10^-12;//farad
freque=3;//decibel
g=u/rd;
volgai=-u*rd/(rd+rd);
req=rd*rd/(rd+rd);
frequ1=1/(2*3.14*cgd*req);
disp("voltage gain   =   "+string((volgai)));//correction in book
disp("frequency   =   "+string((frequ1))+"hertz");
capac1=cgd*(1+g);
disp("output capacitance   =   "+string((capac1))+"farad");



disp("req   =   "+string((req))+"ohm");
