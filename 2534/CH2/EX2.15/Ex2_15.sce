//Ex2_15
clc
flux1 = 100*10^-6
flux2 = 50*10^-6
flux12 = flux1 - flux2
disp("flux1 = "+string(flux1)+"Wb")//flux of coil 1
disp("flux2 = "+string(flux2)+"Wb")//flux of coil 2
disp("K = flux linkage between coil 1 and coil 2/flux of coil 1")//coefficient of coupling
disp("  = "+string(flux12/flux1))
