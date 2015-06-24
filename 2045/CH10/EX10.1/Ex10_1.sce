//pagenumber 467 example 1
clear
av=1000;
chvoga=0.001;//change in voltage gain
beta1=1/((chvoga)/(100/av))-1;
beta1=beta1/av;
fegain=(av)/(1+(av*(beta1)));
disp("reverse transmission   =   "+string((beta1)));

disp("gain with feedback   =   "+string((fegain)));

