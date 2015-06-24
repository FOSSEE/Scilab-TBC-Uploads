clc
//to calculate amplitudes of electric and magnetic fields of radiation
//energy received by an electromagnetic wave per sec per unit area is given by    poynting vector |s|=|E*H|=E*H*sin 90 (becoz E is perpendicular to H)
//it is given that energy received by earth's surface is
s=1400                //|s|=2 cal min^-1 cm^-2
muo=4*%pi*10^-7 //permittivity of free space
epsilon0=8.85*10^-12 //permeability of free space
//E*H=1400                          eq(1)
//E/H=sqrt(muo/epsilon0)               eq(2)
//from eq(1) and eq(2) ,we get
E=sqrt(sqrt(muo/epsilon0)*s)
//from eq(1) ,we get
H=1400/E
Eo=E*sqrt(2)
Ho=H*sqrt(2)
disp("amplitude of electric field is Eo="+string(Eo)+"V/m")
disp("amplitude of magnetic field is Ho="+string(Ho)+"amp-turn/m")
