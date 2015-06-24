//Ex8_1
clc
Amin=8000
disp("Amin="+string(Amin)) // Minimum gain of OP-AMP
Amax=64000
disp("Amax="+string(Amax)) // Maximum gain 
disp("part (i)")
delta_Af=0.01
disp("delta_Af="+string(delta_Af)) // Change in overall feedBack gain 
delta_A=(Amax-Amin)/Amin
disp("delta_A= (Amax-Amin)/Amin = "+string(delta_A)) // Change in open loop gain 
Sg = delta_Af/delta_A
B = (1/Sg - 1)/Amax
disp("Sg = delta_Af/delta_A = "+string(Sg))//desensitivity factor
disp(" B = (1/Sg - 1)/Amax = "+string(B))//feedBack factor
 disp(" part (ii)")
Af_min = Amin/(1+B*Amin)//minimum change in overall feedBack gain 
Af_max = Amax/(1+B*Amax)///maximum change in overall feedBack gain 
disp("Af_min = Amin/(1+B*Amin) = "+string(Af_min))
disp("Af_max = Amax/(1+B*Amax) = "+string(Af_max))
disp("variation in Af = "+string(Af_max/Af_min))//variation in Af with feedBack factor 'B'


// for above problem author has divided question in two parts but during solution has written 3 parts. 
// part (i) and part (ii) combinedly equivlent to part (i) 
// part (iii) is equivalent to part (ii)
