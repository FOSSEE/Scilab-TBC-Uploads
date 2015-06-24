//pagenumber 100 example 3
clear
a=4*10^-4;//metre square
sigmap=1;
sigman=0.1;
de=0.15;
vtem=26*10^-3;
i=(a*vtem*((2.11)*(0.224))/((3.22)^(2)))*((1/de*sigman)+(1/de*sigmap));
disp("reverse saturation current   =   "+string(i)+"ampere");//correction in the book


