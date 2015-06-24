//pagenumber 32 example 11
clear
resist=1*10^3;//ohm
w=20*10^-6;//wide metre
w1=400*10^-6;//long metre
mo1=500;//square centimetre/velocity second
q=1.6*10^-19;
conduc=(resist*w*4*10^-6)/w1;
concentration=((1)/(conduc*mo1*q));
disp("concentration of acceptor atoms   =   "+string((concentration))+"per cubic metre");//correction in the book

