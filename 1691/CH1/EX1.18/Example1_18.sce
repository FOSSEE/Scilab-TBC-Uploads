//Example 1.18
clc
disp("Here, output voltage is sampled and fed in series with the input signal. Hence the topology is voltage series feedback.")
disp("  The open loop voltage gain for one stage is given as,")
disp("    Av = -gm*R_eq")
req=(8*40*1000)/((40*1000)+(8*1000)+(8*40))  // in k-ohm
format(5)
disp(req,"  R_eq(in k-ohm) = r_d || R_d || (R_i1+R_2) =")
av=-5*6.62
format(6)
disp(av,"  Av =")
avm=-33.11^3
disp(avm,"Av = Overall voltage gain = |A_vmid|^3 =")  // answer in textbook is wrong
beta=50/(10^6)
format(7)
disp(beta,"  beta = Vf / Vo = -R_1 / R_g = -R_1 / R_1+R_2 =")
d=1+((-5*10^-5)*-36306)
format(6)
disp(d,"  D = 1 + |Av|*beta =")
avf=-36306/2.8153
disp(avf,"  A_vf = Av / D =")
