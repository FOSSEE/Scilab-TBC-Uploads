//pagenumber 469 example 5
clear
fedgai=60;//decibel
outimp=10*10^3;//ohm
outim1=500;//ohm modified impedance
fedgai=1000;
fedbac=((outimp/outim1)-(1))/fedgai;
//10 change in gain
overga=1/((1+(fedgai*fedbac))/0.1);//over gain
disp("feedback factor   =   "+string((fedbac)));
disp("over gain   =   "+string((overga)));
