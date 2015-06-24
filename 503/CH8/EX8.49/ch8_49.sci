//find no load freq setting,sys freq,at no load freq of swing generator, system trip freq

clc;
loadtot=260;
r=125;
pf=.84;
genfl=r*pf;
sld=75;    //supply load
n=3;    //no of generators
ls=loadtot-n*sld;
m=-5/genfl;
f=50;
ff=f-m*sld;disp(ff,'set freq(Hz)');
c=f-m*ls;disp(c,'set freq(Hz) supplied from swing generator');
nld=sld+50/4;
c=ff+m*nld;disp(c,'new system freq(Hz)');
rld=310-n*sld;
c=f-m*rld;disp(c,'set freq(Hz) of swing generator');
nld=310/n;
c=ff+m*nld;disp(c,'system trip freq(Hz)');
