//pagenumber 580 example 4
clear
voltag=2000;//volt
d=15;//centimetre
d1=3;//centimetre
r1=((d^2+d1^2)/(6))*10^-2;//centimetre to metre
vox=sqrt(2*1.6*10^-19*(voltag)/(9.11*10^-31));
b=vox/((1.6*10^-19*r1)/(9.11*10^-31));

disp("transverse magnetic field   =   "+string((b))+"weber per metre square");

