//pagenumber 24 example 1
clear
incaco=1.5*10^16;//cubic metre
resist=2*10^3;//ohm metre
dopcon=10^20;//metre
q=26*10^-3;//electron volt
//(1)
w=2.25*10^32/dopcon;
//(3)
shifer=q*log(dopcon/incaco);//shift in fermi level
ni=9*10^32;
//(3)
w1=ni/dopcon;
disp("minority concentration   =   "+string((w))+"per metre square");
disp("shift in fermi   =   "+string((shifer))+"volt");
disp("minority concentration when n doubled   =   "+string((w1))+"per cubic metre");



