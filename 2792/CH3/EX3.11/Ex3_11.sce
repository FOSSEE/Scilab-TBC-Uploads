clc
alpha1=(-10^(4))
disp("Alpha1 = "+string(alpha1)+"cm^-1") //initializing value of absorption coefficient near the bandedges of GaAs
alpha2=(-10^(3))
disp("alpha2 = "+string(alpha2)+"cm^-1") //initializing value of absorption coefficient near the bandedges of Si
Iabs_by_Iinc = 0.9
disp("Iabs/Iinc= "+string(Iabs_by_Iinc)+"C")//initializing value of amount of light absorbed
L1 = (1/alpha1)*log(1-(Iabs_by_Iinc))
disp("The thickness of a sample GaAs is ,L = (1/alpha1)*log(1-Iabs/Iinc) = "+string(L1)+"cm")//calculation
L2 = (1/alpha2)*log(1-(Iabs_by_Iinc))
disp("The thickness of a sample Si is ,L = (1/alpha2)*log(1-Iabs/Iinc) = "+string(L2)+"cm")//calculation

