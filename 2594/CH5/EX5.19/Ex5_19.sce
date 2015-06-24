clc
Na=5*10^17
disp("Na = "+string(Na)+"/cm^3") //initializing value of medium p doping concentration.
Nd=5*10^17
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columbs") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
Vbi=((K*T/e)*log((Na*Nd)/(no)^2))
disp("(a)Built in potential potential,Vbi=((K*T/e)*log((Na*Nd)/(no)^2))="+string(Vbi)+"eV")//calculation.
Efi_Efp=((K*T/e)*log(Na/no))
disp("(b)fermi level in the P region and N region,Efi_Efp=((KT/e)*log(Na/no)))="+string(Efi_Efp)+"eV")//calculation.
VBI=2*(Efi_Efp)
disp("(c)VBI from the fermi level,VBI=2*(Efi_Efp))="+string(VBI)+"V")//calculation.
