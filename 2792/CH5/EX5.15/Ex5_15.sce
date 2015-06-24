clc
Vr= 10
disp("Vr= "+string(Vr)+"V") //initializing value of reverse bias
R= 10*10^3
disp("R= "+string(R)+"ohm") //initializing value of resistance
//The junction capacitance is 20pF at zero bias and 10 pF at full reverse bias so
Cavg= ((20+10)/2)
disp("Cavg= "+string(Cavg)+"pF") //initializing value of average capacitance during switching
Tp = 10^-7
disp("Tp= "+string(Tp)+"s")//inializing value of minority carrier lifetime
Ir = (Vr)/(R)
disp("The instant reverse current is Ir = (Vr)/(R)= "+string(Ir)+" A")//calculation
Tsd = Tp*log(2)
disp("The storage delay time is Tsd = Tp*log(2)= "+string(Tsd)+" s")//calculation
Tt = 2.3*R*Cavg*10^-12
disp("The time Tt = 2.3*R*Cavg*10^-12= "+string(Tt)+" s")//calculation
T = Tsd+Tt
disp("The total diode recovery time is T = Tsd+Tt = "+string(T)+" s")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 


