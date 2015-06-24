clc
Ndc = 5*10^15
disp("Ndc= "+string(Ndc)+"cm^-3")//inializing value of collector doping
Nab = 5*10^16
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
ni = sqrt(2.25*10^20)
disp("ni = "+string(ni)+"cm^-3") //initializing value of  electron density of ionisation electron for silicon
kbT = 0.026
disp("kbT = "+string(kbT)+"eV/K") //initializing value of thermal voltage at 300K
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Vbi= (kbT)*((log((Nab*Ndc)/(ni^2))))
disp("The built in voltage is ,Vbi= (kbT)*((log((Na*Nd)/Ni^2)))= "+string(Vbi)+"V")//calculation
disp("              for an applied bias of 1 V                ")
VCB1 = 1
disp("VCB = "+string(VCB1)+" V")//initializing value of Collector-base bias voltage
apsilent_s = 11.9*8.85*10^-14
disp("apsilent_s = "+string(apsilent_s)+"F/cm") //initializing value of relative permitivity
Wb = 10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
dWb1 = sqrt((2*apsilent_s*(Vbi+VCB1)*Ndc)/(e*Nab*(Nab+Ndc)))
disp("The extent of depletion into the base side is,dWb = sqrt((2*apsilent_s*(Vbi+Vcb1)*Ndc)/(e*Nab*(Nab+Ndc))) = "+string(dWb1)+"cm")//calculation
Wbn1 = Wb-dWb1
disp("The neutral base width is,Wbn = Wb-dWb1= "+string(Wbn1)+"cm")//calculation
nbo = ((ni)^2)/Nab
disp("The required base doping is,nbo = (ni^2)/Nab = "+string(nbo)+"cm^-3")//calculation
Db = 20
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
VBE = 0.7
disp("VBE= "+string(VBE)+"V")//initializing value of base-Emitter bias voltage
Jc1 = ((e*Db*nbo)/Wbn1)*(exp(VBE/kbT))
disp("The collector current density is,Jc = ((e*Db*nbo)/Wbn)*(exp((e*VBE)/kbT))= "+string(Jc1)+"A/cm^2")//calculation
disp("              for an applied bias of 5 V            ")
VCB2 = 5
disp("VCB = "+string(VCB2)+" V")//initializing value of Collector-base bias voltage
VCE1= VCB1+VBE
disp("The collector emitter voltage is ,VCE= VCB+VBE= "+string(VCE1)+" V")//calculation
VCE2= VCB2+VBE
disp("The collector emitter voltage is ,VCE= VCB+VBE= "+string(VCE2)+" V")//calculation
dWb2 = sqrt((2*apsilent_s*(Vbi+VCB2)*Ndc)/(e*Nab*(Nab+Ndc)))
disp("The extent of depletion into the base side is,dWb = sqrt((2*apsilent_s*(Vbi+Vcb1)*Ndc)/(e*Nab*(Nab+Ndc))) = "+string(dWb2)+"cm")//calculation
Wbn2 = Wb-dWb2
disp("The neutral base width is,Wbn = Wb-dWb1= "+string(Wbn2)+"cm")//calculation
Jc2 = ((e*Db*nbo)/Wbn2)*(exp(VBE/kbT))
disp("The collector current density is,Jc = ((e*Db*nbo)/Wbn)*(exp((e*VBE)/kbT))= "+string(Jc2)+" A/cm^2")//calculation
VA = (Jc1/((Jc2-Jc1)/(VCE2-VCE1)))-(VCE1)
disp("The Early voltage is,VA = (Jc1/((Jc2-Jc1)/(VCE2-VCE1)))-(VCE1)= "+string(VA)+"V")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ by "0.2" value.











