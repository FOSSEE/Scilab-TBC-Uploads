//pagenumber 38 example 21
clear
n=4.4*10^22;
nd=n/10^7;
w=300;//kelvin
nc=4.82*10^15*w^(3/2)/1/sqrt(8);
ec_ef1=-0.026*log((nc/(nd)));
disp("ec-ef   =   "+string((ec_ef1)));
//(2) impurities included inratio 1 to 10^3
n=4.4*10^22;
nd=n/(10^3);
ec_ef1=-0.026*log(nc/nd);
disp("ec-ef   =   "+string((ec_ef1))+"electron volt   ef above ec");
q=log10(nd/nc)/log10(10);
disp("impurities included per germanium atoms   =   0.0002");
