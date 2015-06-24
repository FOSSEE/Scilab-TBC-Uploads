//pagenumber 288 example 5
clear
av=12480;
fedbac=8;//decibel
volgai=20*log10(av);//gain without fedback
volga1=volgai-fedbac;
beta1=((av/5000)-1)/av;

disp("voltage gain with fedback   =   "+string((volga1))+"decibel");
disp("beta   =   "+string((beta1)));

