//Ex8_1
clc
disp("(a)")
Vce=0
Ic=2*10^-3
Ib=30*10^-6
Vbe=50*10^-3
disp("Vce = "+string(Vce)+"V")//collector-emitter voltage
disp("Ic = "+string(Ic)+"A")//collector current
disp("Ib = "+string(Ib)+"A")//base current
disp("Vbe = "+string(Vbe)+"V")//base-emitter voltage
hfe=Ic/Ib
disp("hfe = Ic/Ib = "+string(hfe))//current gain in CE amplifier
hie=Vbe/Ib
disp("hie = Vbe/Ib = "+string(hie)+"ohm")//input impedance in CE amplifier
disp("(b)")
Ib=0
Vce=1
Vbe=0.3*10^-3
Ic=0.1*10^-3
disp("Vce = "+string(Vce)+"V")//collector-emitter voltage
disp("Ic = "+string(Ic)+"A")//collector current
disp("Ib = "+string(Ib)+"A")//base current
disp("Vbe = "+string(Vbe)+"V")//base-emitter voltage
hoe=Ic/Vce
disp("hoe = Ic/Vce = "+string(hoe)+"mho")//output conductance in CE amplifier
hre=Vbe/Vce
disp("hre = Vbe/Vce = "+string(hre))//voltage gain in CE amplifier

// note: textbook answers has printing mistake, regaeding hre.
