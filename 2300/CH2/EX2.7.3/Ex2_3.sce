
//scilab 5.4.1
//windows 7 operating system
//chapter 2:Electron Emission from Solids
clc
clear
//given
kB=1.38*10^(-23)//kB=Boltzmann's constant in J/K
//A=6.02*(10^5)//A=thermionic emission constant in A(m^(-2))(K^(-2))
//Ew1,Ew2=thermionic work function of 2 emitters in eV
e=1.6*10^(-19)//e=charge of anelectron in C
T=2000//T=temperature in Kelvin
//Jx1=A*(T^2)*exp(-(a/(kB*T)))//Jx=emission current density in A/m^(2)
//Jx2=A*(T^2)*exp(-(b/(kB*T)))
//(Jx1/Jx2)=2
//(Jx1/Jx2)=exp((Ew2-Ew1)/(kB*T))
//exp((Ew2-Ew1)/(kB*T))=2
d=(kB*T*log(2))//d=(Ew2-Ew1)=difference in thermionic work functions of 2 emitters
disp("J",d,"d=")
d/e
disp("eV",d/e,"d/e=")
