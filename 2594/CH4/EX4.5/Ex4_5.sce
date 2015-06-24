clc
Nd=10^16
disp("Nd = "+string(Nd)+" cm^-3") //initializing value of donor concentration.
p=10^6
disp("p = "+string(p)+" cm^-3") //initializing value of minority hole concentration.
no=10^10
disp("no = "+string(no)+" cm^-3") //initializing value of electron and hole concentration per cm^3..
n1=10^15
disp("n* = "+string(n1)+" cm^-3") //initializing value of excess electron carrier concentration(denoted by n*).
p1=10^15
disp("p* = "+string(p1)+" cm^-3") //initializing value of excess hole carrier concentration(denoted by p*).
KT=0.0259
disp("KT = "+string(KT)+" eV") //initializing value of multipication of temperature and bolzmann constant.
T=300
disp("T = "+string(T)+" K") //initializing value of temperature.
Ef_Efi=(log(Nd/no)*KT)
disp("Thermal equilibirium fermi level,(Ef_Efi)=(KT*log(n/no)))="+string(Ef_Efi)+" eV")//calculation.
Efn_Efi=log((Nd+n1)/no)*KT
disp("Quasi-fermi levels for n-type dopant,(Efn_Efi)=(KT*log((n+n*)/no))="+string(Efn_Efi)+" eV")//calculation.
Efi_Efp=log((Nd+p1)/no)*KT
disp("Quasi-fermi levels for p-type dopant,(Efi_Efp)=(KT*log((p+p*)/no))="+string(Efi_Efp)+" eV")//calculation.

//the answer for Efn_Efi,Efi_Efp is provided wrong in the book.
//In this question,Nd=(n(used in the formula)).


