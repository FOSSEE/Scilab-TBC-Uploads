//pagenumber 579 example 3
clear
voltag=1000;//volt
//(1) velocity
vx=sqrt(2*1.6*10^-19*(voltag)/(9.11*10^-31));
disp("velocity x   =   "+string((vx))+"metre per second");
vox=1*10^5;//metre per second intial velocity
vx=sqrt((vox)+((2*1.6*10^-19*voltag)/(2.01*1.66*10^-27)));

disp("velocity x   =   "+string((vx))+"metre per second");

