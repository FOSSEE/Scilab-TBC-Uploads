clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.5   Page 119 \n'); //Example 3.5
// Critical Thickness

k = .055;    //[W/m.K] From Table A.3, Cellular glass at Temp 285K
h = 5;       //[W/m^2.K]
ri = 5*10^-3;      //[m]  radius of tube

rct = k/h;     // [m] Critical Thickness of Insulation for maximum Heat loss or minimum resistance

x = linspace(0,.07,100);
ycond=(2.30*log10((x+ri)/ri)/(2*%pi*k));
yconv=(2*%pi*(x+ri)*h)^-1;
ytot=yconv+ycond;
clf();
plot(x,ycond,x,yconv,x,ytot);
xtitle("Resistance vs Radii", "r-ri (m)", "R (m.K/W)");
legend ("Rcond", "Rconv", "Rtotal");

printf("\n\n Critical Radius is = %.3f m \n Heat transfer will increase with the addition of insulation up to a thickness of %.3f m",rct,rct-ri);
//END