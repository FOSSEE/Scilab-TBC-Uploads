clc
Ndc = 10^16
disp("Ndc= "+string(Ndc)+"cm^-3")//inializing value of collector doping
Nab = 10^17
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
Nde = 10^18
disp("Nde= "+string(Nde)+"cm^-3")//inializing value of emitter doping
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of square of electron density of ionisation electron for silicon
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Db = 30
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
De = 10
disp("De= "+string(De)+"cm^2/s")//initializing value of diffusion coefficient
Lb = 10*10^-4
disp("Lb= "+string(Lb)+"cm")//inializing value of minority carrier base diffusion length
Le = 10*10^-4
disp("Le= "+string(Le)+"cm")//inializing value of minority carrier emitter diffusion length
Wb = 10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
We = 10^-4
disp("We= "+string(We)+"cm")//initializing value of emitter width
Vbi= (kbT)*((log((Nab*Ndc)/ni^2)))
disp("The built in voltage is ,Vbi= (kbT)*((log((Na*Nd)/Ni^2)))= "+string(Vbi)+"V")//calculation
disp("              for an applied reverse bias of 5 V                ")
VCB1 = 5
disp("VCB = "+string(VCB1)+" V")//initializing value of Collector-base bias voltage
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
nbo = 2.25*10^3
disp("nbo= "+string(nbo)+"cm^-3")//inializing value of majority carrier densities for the base in npn transistor
peo = 112.5
disp("peo= "+string(peo)+"cm^-3")//inializing value of majority carrier densities for the emitter in npn transistor
dWb1 = sqrt((2*apsilen*(Vbi+VCB1)*Ndc)/(e*Nab*(Nab+Ndc)))
disp("The extent of depletion into the base side is,dWb = sqrt((2*apsilen*(Vbi+Vcb)*Ndc)/(e*Nab*(Nab+Ndc))) = "+string(dWb1)+"cm")//calculation
Wbn1 = Wb-dWb1
disp("The neutral base width is,Wbn = Wb-dWb1= "+string(Wbn1)+"cm")//calculation
gamma_e_1 = (1-((peo*De*Wbn1)/(Db*nbo*We)))
disp("The emitter efficiency gamma_e_1 = (1-((peo*De*Wbn)/(Db*nbo*We)))= "+string(gamma_e_1))//calculation
B1 = 1-((Wbn1^2)/(2*(Lb)^2))
disp("The base transport factor is,B = 1-((Wbn^2)/(2*(Lb)^2)) = "+string(B1))//calculation
alpha1 = gamma_e_1*B1
disp("The  current gain alpha1 = gamma_e_1*B1= "+string(alpha1))//calculation
Beta3 = (alpha1)/(1-alpha1)
disp("The current gain Beta3 = (alpha1)/(1-alpha1) = "+string(Beta3))//calculation
VBE = 1
disp("VBE= "+string(VBE)+"V")//initializing value of Emitter-base bias voltage
A= 4*10^-6
disp("A= "+string(A)+"cm^2") //initializing value of area of silicon npn transistor device
disp("using collector relation IC = (((e*A*Db*nbo)/(Wbn))*(exp((e*VBE)/(KbT))-1))-(((e*A*Db*nbo*Wbn)/(2*(Lb)^2))*(exp((e*VBE)/(KbT))-1)) and neglecting 2nd part")
IC = (((e*A*Db*nbo)/(Wbn1))*(exp((VBE)/(kbT))-1))
disp("The collector current is,IC = (((e*A*Db*nbo)/(Wbn))*(exp((e*VBE)/(KbT))-1)) = "+string(IC)+"A")//calculation
//Note: in text book the author hasused precision value for gamma and alpha thats why there is difference in the value of beta.
disp("              for an applied reverse bias of 6 V                ")
VCB2 = 6
disp("VCB = "+string(VCB2)+" V")//initializing value of Collector-base bias voltage
dWb2 = sqrt((2*apsilen*(Vbi+VCB2)*Ndc)/(e*Nab*(Nab+Ndc)))
disp("The extent of depletion into the base side is,dWb2 = sqrt((2*apsilen*(Vbi+VCB2)*Ndc)/(e*Nab*(Nab+Ndc))) = "+string(dWb2)+"cm")//calculation
Wbn2 = Wb-dWb2
disp("The neutral base width is,Wbn2 = Wb-dWb2= "+string(Wbn2)+"cm")//calculation
IC2 = (((e*A*Db*nbo)/(Wbn2))*(exp((VBE)/(kbT))-1))
disp("The collector current is,IC = (((e*A*Db*nbo)/(Wbn2))*(exp((VBE)/(kbT))-1)) = "+string(IC2)+"A")//calculation
go = (IC2-IC)/(VCB2-VCB1)
disp("The output conductance is,go = (IC2-IC)/(VCB2-VCB1) = "+string(go)+"ohm^-1")//calculation
