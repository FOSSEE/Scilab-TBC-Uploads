//pagenumber 582 example 8
clear
voltag=2000;//volt
d=1.5*10^-2;//centimetre
d1=5*10^-3;//metre
distan=50*10^-2;//metre
//(1) velocity
vox=sqrt(2*1.6*10^-19*(voltag)/(9.11*10^-31));
//(2) sensitivity
defsen=distan*d/(2*d1*voltag);
//deflection factor
g=1/defsen;
disp("velocity   =   "+string((vox))+"metre per second");
disp("sensitivity   =   "+string((defsen))+"metre per volt");

disp("deflection factor   =   "+string((g))+"volt per metre");//correction in the book



