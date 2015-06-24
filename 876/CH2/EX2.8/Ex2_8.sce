//caption:Find limiting error
//Ex2.8
clc
clear
close
dP=1.5//limiting error in power(in %)
dI=1//limiting error in current(in %)
dR=(dP+2*dI)
disp(dR,'limiting error(in %)=')