clc;funcprot(0);//EXAMPLE 3.20
// Initialisation of Variables
pm=7.5;.................//Mean effective pressure in bar
r=12.5;..................//Compression ratio
p1=1;....................//Initial pressure in bar
ga=1.4;.................//Ratio of specific heats
//Calculations
k=(pm*(ga-1)*(r-1))/(p1*(r^ga));
c1=(r^(1-ga))/k;c2=(-ga)/k;c=1+(ga/k)-((r^(1-ga))/k);
function[f]=F(rho)
    f=c1*(rho^ga)+c2*rho+c;
endfunction
//Initial guess
rho=2;
//Derivative
function[z]=D(rho)
    z=c1*ga*(rho^(ga-1))+c2;
endfunction
y=fsolve(rho,F,D)
perc=((y-1)/(r-1))*100;..................//Percentage of cutoff
disp(perc,"Cut off Percentage:")
