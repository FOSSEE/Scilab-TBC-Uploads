clc
Nc = 2.8*10^19
disp("Nc = "+string(Nc)+"cm^-3") //initializing value of effective density of electron
Nd = 10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atom
Ec_minus_Ed = 45*10^-3
disp("Ec_minus_Ed = "+string(Ec_minus_Ed)+"eV") //initializing value of donor binding energy
kBT=0.026
disp("kBT = "+string(kBT)+"eV") //initializing value of multiplication of boltzmann constant and temperature 
//let fraction of ionised donor are represented as Fd = (nd/(n+nd))
Fd= (1/(((Nc/(2*Nd))*exp(-(Ec_minus_Ed/kBT)))+1))*100
disp("fraction of ionised donor is Fd= 1/(((Nc/(2*Nd))*exp(-(Ec_minus_Ed/kBT)))+1)= "+string(Fd)+"%")//calculation
Nd = 10^18
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atom
Fd= (1/(((Nc/(2*Nd))*exp(-(Ec_minus_Ed/kBT)))+1))*100
disp("fraction of ionised donor is Fd= 1/(((Nc/(2*Nd))*exp(-(Ec_minus_Ed/kBT)))+1)= "+string(Fd)+"%")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 



