//avalanche zone velocity of TRAPATT diode
//given
clc
Na=1.8d+15//per cm3//doping concentration
j=25d+3//A/cm2//current density
q=1.6d-19//couloms
Vaz=j/(q*Na)//cms//avalanche zone velocity
Vaz=round(Vaz/1d+5)*1d+5///rounding off decimals
disp(Vaz/100,'the avalanche zone velocity of TRAPATT in m/s')//m/s
