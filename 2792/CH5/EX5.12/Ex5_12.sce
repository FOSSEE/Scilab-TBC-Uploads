clc
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/cm") //initializing value of relative permitivity
Na=10^19
disp("Na = "+string(Na)+"cm^-3") //initializing value of acceptor atoms
Nd=10^16
disp("Nd = "+string(Nd)+"cm^-3") //initializing value of donor atoms
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Fcrit1 = 4*10^5
disp("Fcrit1= "+string(Fcrit1)+"V/cm")//initializing value of critical field of silicon
Fcrit2 = 10^7
disp("Fcrit2= "+string(Fcrit2)+"V/cm")//initializing value of critical field of diamond
VBD_Si = (apsilen*Fcrit1^2)/(2*e*Nd)
disp("The breakdown field for silicon is ,VBD_Si = (apsilen*Fcrit1^2)/(2*e*Nd) = "+string(VBD_Si)+" V")//calculation
VBD_C = (apsilen*Fcrit2^2)/(2*e*Nd)
disp("The breakdown field for diomond is ,VBD_C = (apsilen*Fcrit2^2)/(2*e*Nd) = "+string(VBD_C)+" V")//calculation
// Note : In the textbook answer of breakdown voltage of silicon is wrong due to which breakdown voltage of diomand also differ


