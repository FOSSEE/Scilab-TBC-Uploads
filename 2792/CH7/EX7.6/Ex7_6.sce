clc
De = 20
disp("De= "+string(De)+"cm^2/s")//initializing value of diffusion coefficient
Db=De
Nde = 5*10^17
disp("Nde= "+string(Nde)+"cm^-3")//inializing value of emitter doping
Nab = 10^17
disp("Nab= "+string(Nab)+"cm^-3")//inializing value of base doping
Wb = 10^-4
disp("Wb= "+string(Wb)+"cm")//initializing value of base width
ni = 1.5*10^10
disp("ni = "+string(ni)+"cm^-3") //initializing value of  electron density of ionisation electron for silicon
// for case (a) value of Te=10^-6s
Te1 = 10^-6
disp("Te= "+string(Te1)+"s")//inializing value of minority carrier lifetime for the electrons and holes
Le1 = sqrt(De*Te1)
disp("The  diffusion length is,Le1 = sqrt(De*Te)= "+string(Le1)+"cm")//calculation
Lb1=Le1
disp("The  diffusion length is,Lb1= "+string(Lb1)+"cm")//calculation
peo1 = (ni)^2/Nde
disp("The  majority carrier densities for the emitter in npn transistor is,peo = (ni)^2/Nde= "+string(peo1)+"cm^-3")//calculation
nbo1 = (ni)^2/Nab
disp("The  majority carrier densities for the base in npn transistor is,nbo = (ni)^2/Nab= "+string(nbo1)+"cm^-3")//calculation
alpha_1 = (1-((peo1*De*Wb)/(nbo1*Db*Le1)))*(1-((Wb^2)/(2*Le1^2)))
disp("The  current gain is,alpha_ = (1-((peo*De*Wb)/(nbo*Db*Le1)))*(1-((Wb^2)/(2*Le^2)))= "+string(alpha_1))//calculation
Beta1 = (alpha_1)/(1-alpha_1)
disp("The current gain Beta1 = (alpha_1)/(1-alpha_1) = "+string(Beta1))//calculation

//for case (b) value of Te=10^-8s
Te2 = 10^-8
disp("Te= "+string(Te2)+"s")//inializing value of minority carrier lifetime for the electrons and holes
Le2 = sqrt(De*Te2)
disp("The  diffusion length is,Le = sqrt(De*Te)= "+string(Le2)+"cm")//calculation
peo2 = (ni)^2/Nde
disp("The  majority carrier densities for the emitter in npn transistor is,peo = (ni)^2/Nde= "+string(peo2)+"cm^-3")//calculation
nbo2 = (ni)^2/Nab
disp("The  majority carrier densities for the base in npn transistor is,nbo = (ni)^2/Nab= "+string(nbo2)+"cm^-3")//calculation
alpha_2 = (1-((peo2*De*Wb)/(nbo2*Db*Le2)))*(1-((Wb^2)/(2*Le2^2)))
disp("The  current gain alpha_ = (1-((peo*De*Wb)/(nbo*Db*Le2)))*(1-((Wb^2)/(2*Le^2)))= "+string(alpha_2))//calculation
Beta2 = (alpha_2)/(1-alpha_2)
disp("The current gain Beta2 = (alpha_2)/(1-alpha_2) = "+string(Beta2))//calculation
