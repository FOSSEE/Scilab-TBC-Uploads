clc
Nd=2*10^17
disp("Nd = "+string(Nd)+"/cm^-3") //initializing value of donor concentration.
Nc=2.8*10^19
disp("Nc = "+string(Nc)+"/cm^-3") //initializing value of effective density of state in the conduction band.
Js=40*10^-6
disp("Js = "+string(Js)+"A/cm^2") //initializing value of saturation current density.
T=300
disp("T = "+string(T)+"K") //initializing value of absolute temperature.
R=110
disp("R = "+string(R)+" A/(K-cm^2)") //initializing value of richardson's constant.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage.
VBn=(Vt*(log(R*T^2/Js)))
disp("VBn = "+string(VBn)+" V") // calculation.
Vn=(Vt*(log(Nc/Nd)))
disp("Vn = "+string(Vn)+" V") // calculation.
VBI=(VBn-Vn)
disp("VBI=(VBn-Vn))="+string(VBI)+" V")//calculation

//The value of Vn (after calculation ) is provided  wrong in the book,due to which VBI also differ. 
