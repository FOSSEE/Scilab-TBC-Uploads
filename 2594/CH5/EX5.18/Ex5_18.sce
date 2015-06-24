clc
Na=10^17
disp("Na = "+string(Na)+" cm^-3") //initializing value of acceptor concentration.
Nd=5*10^16
disp("Nd = "+string(Nd)+" cm^-3") //initializing value of donor concentration.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
no=1.5*10^10
disp("no = "+string(no)+" cm^3") //initializing value of intrinsic carrier concentration.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
Vbi=(Vt*(log(Na*Nd/(no^2))))
disp("(a)Vbi=(Vt*(log(Na*Nd/(no^2))))="+string(Vbi)+" V")//calculation.
Efi_Efp=(Vt*log(Na/(no)))
disp("(b)value of fermi level on each side of junction,Efi_Efp=(Vt*log(Na/(no)))="+string(Efi_Efp)+" V")//calculation.
Efn_Efi=(Vt*log(Nd/(no)))
disp("Efn_Efi=(Vt*log(Nd/(no)))="+string(Efn_Efi)+" V")//calculation.
disp("(c)The energy band digram is similar to Fig P5.3")
Vbi=((Efi_Efp)+(Efn_Efi))
disp("(d)Vbi=((Efi_Efp)+(Efn_Efi))/(e)=Vj="+string(Vbi)+" V")//calculation.
