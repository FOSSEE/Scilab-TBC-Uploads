//pagenumber 229 example 47
clear
alpha1=0.98;
alph11=0.96;
vcc=24;//volt
colres=120;//ohm
ie=100*10^-3;//ampere
beta1=alpha1/(1-alpha1);
bet11=alph11/(1-alph11);
ib2=ie/(1+bet11);
ie1=-ib2;
disp("ib2   =   "+string((ib2))+"ampere");
disp("ie1   =   "+string((ie1))+"ampere");


ic2=bet11*ib2;
ib1=ib2/(1+beta1);
ic1=beta1*ib1;
disp("ic2   =   "+string((ic2))+"ampere");
disp("ib1   =   "+string((ib1))+"ampere");
disp("ic1   =   "+string((ic1))+"ampere");
ic=ic1+ic2;
vce=vcc-ic*colres;
ib=ib1;
w=ic/ib;
q=-ic/ie;
disp("ic   =   "+string((ic))+"ampere");
disp("ic/ib   =   "+string((w)));
disp("ic/ie   =   "+string((q)));//correction in the book
disp("vce   =   "+string((vce))+"volt");


