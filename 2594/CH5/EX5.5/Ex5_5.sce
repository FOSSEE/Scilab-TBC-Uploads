clc
Na=10^17
disp("Na = "+string(Na)+"/cm^3") //initializing value of medium p doping concentration.
Nd=10^15
disp("Nd = "+string(Nd)+"/cm^3") //initializing value of light n doping .
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of intrinsic carrier concentration.
e=1.6*10^-19
disp("e = "+string(e)+"columns") //initializing value of charge of electrons.
K=1.38*10^-23
disp("K = "+string(K)+"J/k") //initializing value of boltzmann constant.
T=300
disp("T = "+string(T)+"K") //initializing value of temperature.
Efi_Efp=((K*T/e)*log(Na/no))
disp("(a)fermi level in the P region,Efi_Efp=((KT/e)*log(Na/no)))="+string(Efi_Efp)+"eV")//calculation.
Efn_Efi=((K*T/e)*log(Nd/no))
disp("fermi level in the n region,Efn_Efi=((KT/e)*log(Nd/no)))="+string(Efn_Efi)+"eV")//calculation.
Efn_Efp=(Efi_Efp)+(Efn_Efi)
disp("(b)junction potential at room temperature,Efn_Efp=(Efi_Efp)+(Efn_Efi))="+string(Efn_Efp)+"eV")//calculation.
