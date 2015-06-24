//pagenumber 582 example 9
clear
voltag=2000;//volt
d=50*10^-3;//metre
//(1) velocity
vox=sqrt(2*1.6*10^-19*(voltag)/(9.11*10^-31));
disp("velocity   =   "+string((vox))+"metre per second");
//(2) fc
fc=vox/(4*d);

disp("fc   =   "+string((fc))+"hertz");
