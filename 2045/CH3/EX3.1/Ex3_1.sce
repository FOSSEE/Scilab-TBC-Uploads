//pagenumber 138 example 1
clear
//zener diode
voltag=5.2;//volts
w=260*10^-3;//watts
appv=15;//voltsw1=50;//watts
imax=w/voltag*0.1;
//to maitain a constant voltage
imax1=(w/voltag)-imax;
resmin=(appv-voltag)/(w/voltag);
resmax=(appv-voltag)/imax1;
//load 50
resmax1=((9.8)/(45*10^-3))-50;
resmin1=((9.8)/(50*10^-3))-50;
res50=resmax1-resmin1;
disp("resistance range from "+string(resmin)+" to "+string(resmax)+"ohms");
disp("resistance range at 50 from "+string(resmin1)+" to "+string(resmax1)+"ohms");



