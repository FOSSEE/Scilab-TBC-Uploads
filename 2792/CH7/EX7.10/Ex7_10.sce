clc
apsilent_s = 11.9*8.85*10^-14
disp("apsilent_s = "+string(apsilent_s)+"F/cm") //initializing value of relative permitivity
Ndc = 5*10^16
disp("Ndc= "+string(Ndc)+"cm^-3")//inializing value of collector doping
Nde = 10^18
disp("Nde= "+string(Nde)+"cm^-3")//inializing value of emitter doping
Nab = 10^17
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
ni = sqrt(2.25*10^20)
disp("ni = "+string(ni)+"cm^-3") //initializing value of  electron density of ionisation electron for silicon
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Db = 30
disp("Db= "+string(Db)+"cm^2/s")//initializing value of diffusion coefficient in the base
De = 10
disp("De= "+string(De)+"cm^2/s")//initializing value of diffusion coefficient
Lb = 15*10^-4
disp("Lb= "+string(Lb)+"cm")//inializing value of minority carrier base diffusion length
Le = 5*10^-4
disp("Le= "+string(Le)+"cm")//inializing value of minority carrier emitter diffusion length
Beta= 100
disp("Beta= "+string(Beta)) //initializing value of current gain (Beta)
nbo = 2.25*10^3
disp("nbo= "+string(nbo)+"cm^-3")//inializing value of majority carrier densities for the base in npn transistor
peo = 112.5
disp("peo= "+string(peo)+"cm^-3")//inializing value of majority carrier densities for the emitter in npn transistor
VCB1 = 5
disp("VCB = "+string(VCB1)+" V")//initializing value of Collector-base bias voltage
//"using relation   B = (IC/IB) = ((Db*nbo*Le)/(De*peo*Wbn))"
Wbn = ((Db*nbo*Le)/(De*peo*100))
disp("neutral base width is ,Wbn = ((Db*nbo*Le)/(De*peo*100))= "+string(Wbn)+"cm")//calculation
Vbi= (kbT)*((log((Nab*Ndc)/(ni^2))))
disp("The built in voltage is ,Vbi= (kbT)*((log((Na*Nd)/Ni^2)))= "+string(Vbi)+"V")//calculation
dWb1 = sqrt((2*apsilent_s*(Vbi+VCB1)*Ndc)/(e*Nab*(Nab+Ndc)))
disp("The extent of depletion into the base side is,dWb = sqrt((2*apsilent_s*(Vbi+Vcb1)*Ndc)/(e*Nab*(Nab+Ndc))) = "+string(dWb1)+"cm")//calculation
Wb = Wbn+dWb1
disp("The  base width is,Wb = Wbn+dWb1= "+string(Wb)+"cm")//calculation
// NOTE: the value calculated for Wbn is wrong in the book and all the succesive answer also depeandant on that are also wrong
//("Two disadvange are")
//("The output conductance will suffer and the collector current will have a stronger dependence on VCB")
//("The device may suffer punchthrough at a lower bias")
//("Two advantages")
//("The current gain will be higher")
//("The device speed will be faster")
























