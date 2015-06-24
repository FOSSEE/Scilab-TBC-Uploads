//pagenumber 518 example 6
clear
cgs=5*10^-12;//farad
cds=1*10^-12;//farad
conduct=10*10^-3;//ampere per volt
rd=50*10^3;//ohm
r=10*10^6;//ohm
induct=0.5;//henry
c1=0.05*10^-12;//farad
rse=1*10^3;//ohm
c=1*10^-12;//farad
//(1) c11
c11=((((cds*cgs)/(cds+cgs))+1)*c1)/(((cds*cgs)/(cds+cgs))+1+c1);
disp("resonanting capacitance   =   "+string((c11))+"farad");
//(2) frequency
freque=((sqrt(2))/(2*3.14*sqrt(induct*c11)));
disp("resonant frequency   =   "+string((freque))+"hertz");
//(3) frequency parallel

freque=1/(2*3.14*sqrt(((induct*c*c1))/(c+c1)));
disp("parallel resonant frequency   =   "+string((freque))+"hertz");
//frequency series
freque=1/((2*3.14*sqrt(induct*c1)));
disp("series resonant frequency   =   "+string((freque))+"hertz");
qualit=((induct/c1)^(0.5))/rse;
disp("quality factor   =   "+string((qualit)));//correction in book
//(4) loop gain
abeta1=conduct*rd*cds/cgs;
disp("loop gain   =   "+string((abeta1)));
//(5)
w=r*(cds+cgs);
disp("bias   =   "+string((w))+"second");
