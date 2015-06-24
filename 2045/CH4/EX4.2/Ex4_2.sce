//pagenumber 202 example 2
clear
colvoltag=12;//volts
vbe=5;//volts
colcur=10*10^-3;//ampere
vce=5;//volts
beta1=50;
ib=colcur/beta1;
rb=(vbe-0.7)/ib;
rc=(12-vbe)/colcur;
//when 100ohm included
disp("rb   =   "+string(rb)+"ohm");
disp("rc   =   "+string(rc)+"ohm");
rb=(vce-0.7-(colcur+ib)*beta1)/ib;

disp("rb at emitter resistance 100ohm   =   "+string(rb)+"ohm");//correction in the book



