clc
X1=4.13
disp("X1 = "+string(X1)+" eV") //initializing value of eldelta_Ectron effinity of germanium.
X2=4.07
disp("X2 = "+string(X2)+" eV") //initializing value of electron effinity of gallium arsenide.
Eg1=0.7
disp("Eg1 = "+string(Eg1)+" eV") //initializing value of energy gap of germanium.
Eg2=1.43
disp("Eg2 = "+string(Eg2)+" F/cm") //initializing value of energy gap of gallium arsenide..
Nv1=6*10^18
disp("Nv1 = "+string(Nv1)+" cm^-3") //initializing value of density of states in Valence band,Nv for germanium.
Nv2=7*10^18
disp("Nv2 = "+string(Nv2)+" cm^-3") //initializing value of density of states in Valence band,Nv for galliminum arsenide.
Vt=0.0259
disp("Vt = "+string(Vt)+" eV") //initializing value of thermal voltage... Vt = K*T/e
e=1.6*10^-19
disp("e = "+string(e)+" columbs") //initializing value of electronic charge.
no=2.5*10^13
disp("no = "+string(no)+" cm^-3") //initializing value of intrinsic carrier concentration.
Pp=10^17
disp("Pp = "+string(Pp)+" cm^-3") //initializing value of hole concentration on the depletion edge of the N region.
Nd=10^17
disp("Nd = "+string(Nd)+" cm^-3") //initializing value of number of donor ions (which is equal to hole concentration on the depletion edge of the N region).
np=(no^2)/Pp
disp("np="+string(np)+" cm^-3")//calculation
delta_Eg=(Eg2-Eg1)
disp("delta_Eg=(Eg2-Eg1)="+string(delta_Eg)+" eV")//calculation
delta_Ec=(X1-X2)
disp("delta_Ec=(X1-X2)="+string(delta_Ec)+" eV")//calculation
delta_Ev=(delta_Eg-delta_Ec)
disp("delta_Ev=(delta_Eg-delta_Ec)="+string(delta_Ev)+" eV")//calculation
Vbi=((delta_Ev*1.6*10^-19)/(e))+((Vt*log((Nv1*Nd)/(np*Nv2))))
disp("Vbi=((delta_Ev*1.6*10^-19)/(e))+((Vt*log((Nv1*Nd)/(np*Nv2))))="+string(Vbi)+" V")//calculation







