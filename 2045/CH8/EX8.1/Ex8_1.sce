//pagenumber 399 example 1
clear
freque=5*10^3;//hertz
//(1)
g=2*10^-3;//ampere per volt
rd=10*10^3;//ohm
r1=30*10^3;//ohm
r12=r1*r1/(r1+r1);
volgai=-(g*r12*rd)/(r12+rd);
disp("voltage gain   =   "+string((volgai)));//correction r12 should be taken as 15*10^3ohm in book
//(2) capacitance included
c=0.025*10^-6;//farad
frequ1=1/((2*3.14*(((rd*r1)/(rd+r1))+r1))*c);
volgai=(volgai/(sqrt((1+(frequ1/freque)^2))));

disp("voltage gain   =   "+string((volgai)));



