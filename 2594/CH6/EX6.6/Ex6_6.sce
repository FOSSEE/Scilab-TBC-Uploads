clc
Nd=2*10^17
disp("Nd = "+string(Nd)+" /cm^-3") //initializing value of donor concentration.
Dp=30
disp("Dp = "+string(Dp)+" cm^2/s") //initializing value of diffusion cofficient.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+" /cm^-3") //initializing value of effective density of state in the conduction band.
Js=40*10^-6
disp("Js = "+string(Js)+ "A/cm^2") //initializing value of saturation current density.
no=1.5*10^10
disp("no = "+string(no)+" cm^-3") //initializing value of intrinsic concentration of electrons.
tp=10^-6
disp("tp = "+string(tp)+" s") //initializing value of hole life-time.
T=300
disp("T = "+string(T)+" K") //initializing value of absolute temperature.
R=110
disp("R = "+string(R)+" A/(K-cm^2)") //initializing value of richardson's constant.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of charge of electrons.
Er=11.9
disp("Er = "+string(Er)) //initializing value of relative dielectric permittivity constant .
Eo=8.854*10^-14
disp("Eo = "+string(Eo)+" F/cm") //initializing value of dielectric constant of free space.
E=Eo*Er
disp("total permittivity,E=Eo*Er)="+string(E)+" F/cm")//calculation
VBn=(Vt*(log(R*T^2/Js)))
disp("VBn = "+string(VBn)+" V") // calculation.
Vn=(Vt*(log(Nc/Nd)))
disp("Vn = "+string(Vn)+" V") // calculation.
VBI=(VBn-Vn)
disp("VBI=(VBn-Vn))="+string(VBI)+" V")//calculation
W=(sqrt((E*VBI)/(e*Nd)))
disp("current density in a metal semiconductor junction ,W = "+string(W)+" A") // calculation.
Lp=(sqrt(Dp*tp))
disp("Diffusion length,Lp=(sqrt(Dp*tp)) = "+string(Lp)+" cm") // calculation.
Jpo=(e*Dp*no^2)/(Lp*Nd)
disp("saturation hole current density,Jpo=(e*Dp*no^2)/(Lp*Nd)) = "+string(Jpo)+" A/cm^2") // calculation.


//The value of Vn (after calculation ) is provided  wrong in the book,due to which VBI differ and due to VBI ,current density in a metal semiconductor junction (W)gets changed. 
//The value of Jpo (saturation hole current density) ,after calculation is also provided wrong in the book.












