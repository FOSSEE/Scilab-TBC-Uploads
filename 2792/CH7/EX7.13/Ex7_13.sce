clc
T = 300
disp("T = "+string(T)+"K") //initializing value of temperature
Nd1 = 10^18
disp("Nd1= "+string(Nd1)+"cm^-3")//inializing value of emitter doping
Nd2 = 10^20
disp("Nd2= "+string(Nd2)+"cm^-3")//inializing value of emitter doping
dEg1 = (22.5*sqrt((Nd1*300)/((10^18)*T)))/10^3
disp("The bandgap narrowing is,dEg = 22.5*sqrt((Nd1*300)/((10^18)*T)) = "+string(dEg1)+"ev")//calculation
dEg2= (22.5*sqrt((Nd2*300)/((10^18)*T)))/10^3
disp("The bandgap narrowing is,dEg = 22.5*sqrt((Nd2*300)/((10^18)*T)) = "+string(dEg2)+"ev")//calculation
kbT = .026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of kbT at 300K
neo1 = 10^18
disp("neo= "+string(neo1)+"cm^-3")//inializing value of majority carrier densities for the emitter
neo2 = 10^20
disp("neo= "+string(neo2)+"cm^-3")//inializing value of majority carrier densities for the emitter
ni = sqrt(2.25*10^20)
disp("ni = "+string(ni)+"cm^-3") //initializing value of  electron density of ionisation electron for silicon
peo1 = (ni^2*exp(dEg1/kbT))/neo1
disp("The hole density in emitter is,peo = (ni^2*exp(dEg1/kbT))/neo1 = "+string(peo1)+"cm^-3")//calculation
// note:-there is error in the unit of peo in the book
peo2 = (ni^2*exp(dEg2/kbT))/neo2
disp("The hole density in emitter is,peo2 = (ni^2*exp(dEg2/kbT))/neo2 = "+string(peo2)+"cm^-3")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
