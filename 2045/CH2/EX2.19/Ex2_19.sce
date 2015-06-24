//pagenumber 114 example 19
clear
na=10*22;//atoms per cubic metre
nd=1.2*10^21;//donor per cubic metre
voltag=1.38*10^-23*(273+298)/(1.6*10^-19);//correction in the book
voltag=0.026;
ni=1.5*10^16;
ni=ni^2;
v1=voltag*log((na*nd)/(ni));
disp("thermal voltage   =   "+string((voltag))+"volt");
disp("barrier voltage   =   "+string(abs(v1))+"volt");//correction in the book
