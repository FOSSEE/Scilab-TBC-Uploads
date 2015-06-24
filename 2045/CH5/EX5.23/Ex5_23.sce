//pagenumber 302 example 23
clear
vcc=5;//volt
colres=250;//ohm
v1=5;//volt
rb=25*10^3;//ohm
beta1=200;
vbs=0.8;//volt
vcon=0.3;//volt
icon=(vcc-vcon)/colres;
ibon=icon/beta1;
ibs=(v1-vbs)/rb;
ic=(vcc-0.2)/colres;
beta1=ic/ibs;
disp("forced beta   =   "+string((beta1)));
