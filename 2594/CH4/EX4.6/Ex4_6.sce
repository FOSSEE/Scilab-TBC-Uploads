clc
Nd=5*10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor ion concentration.
Na=0
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor ion concentration.
no=1.5*10^10
disp("no = "+string(no)+"cm^-3") //initializing value of electron and hole concentration per cm^3.
n1=5*10^14
disp("n* = "+string(n1)+"cm^-3") //initializing value of excess electron carrier concentration.
p1=5*10^14
disp("p* = "+string(p1)+"cm^-3") //initializing value of excess hole carrier concentration.
KT=0.0259
disp("KT = "+string(KT)) //initializing value of thermal voltage.
Ef_Efi=(KT*log(Nd/no))
disp("thermal equilibrium fermi level,(Ef_Efi)=(KT*log(n/no)))="+string(Ef_Efi)+"eV")//calculation.
Efn_Efi=log((Nd+n1)/no)*KT
disp("Excess carrier concentration ,(Efn_Efi)=(KT*log((n+n*)/no))="+string(Efn_Efi)+"eV")//calculation.
Efi_Efp=log((Na+p1)/no)*KT
disp("(Ef_Efi)=(KT*log((p+p*)/no))="+string(Efi_Efp)+"eV")//calculation.
