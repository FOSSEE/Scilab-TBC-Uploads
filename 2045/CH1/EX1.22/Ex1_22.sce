//pagenumber 39 example 22
clear
n=5*10^22;//atoms per cubic centimetre
//(1) 1 atom per 10^6
m=0.8;//metre
na=n/10^6;
w=300;//kelvin
nv=4.82*10^15*(m)^(3/2)*w^(3/2);
ef_ec=0.026*log(nv/na);
disp("ef-ec   =   "+string((ef_ec))+"electron volt");
//(2) impurity included 10*10^3 per atom
na=n/(10*10^3);
ef_ec=0.026*log(nv/na);
disp("ef-ec   =   "+string((ef_ec))+"electron volt");
//(3) condition to concide ec=ef
na=4.81*10^15;
w=(nv/na)^(2/3);
disp("temperature   =   "+string((w))+"kelvin");//correction in the book

