clc
po=10^18
disp("po = "+string(po)+" cm^-3") //initializing value of N type doping level.
no=1.5*10^10
disp("no = "+string(no)+" /cm^-3") //initializing value of electron and hole concentration per cm^3.
Po=10^17
disp("P(o)= "+string(Po)+" cm^-3") //initializing value of excess hole concentration.
A=0.1
disp("A = "+string(A)+" cm^-2") //initializing the value of area. 
up=300
disp("up = "+string(up)+" cm^2/Vs") //initializing value of mobility of p-type carrier. 
t=7*10^-9
disp("t = "+string(t)+" sec") //initializing value of transit time.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage at 300K.
x=500*10^-8
disp("x = "+string(x)+" cm") //initializing value of distance at which difference in fermi level is to calculated.
Dp=(Vt*up)
disp("Diffusion cofficient,Dp=(Vt*up))= "+string(Dp)+" cm^2/s")//calculation
Lp=(sqrt(Dp*t))
disp("Diffusion length,Lp=(sqrt(Dp*t)))= "+string(Lp)+" cm")//calculation
px=(po+(Po*exp(-x/Lp)))
disp("Excess charge generated,p(x)=(po+(P(o)*exp(-x/Lp)))= "+string(px)+" cm^-3")//calculation
Efi_Efp=(Vt*log(px/no))
disp("Fermi level,Efi_Efp=(Vt*log(p(x)/no)))= "+string(Efi_Efp)+" eV")//calculation
