//caption:Find magnitude of limiting error fot R1 and R2
//Ex2.5
clc
clear
close
R1=36//resistance(in ohm)
R2=75//resistance(in ohm)
er=0.005//limiting error(in ohm)
dR1=R1*er
disp(dR1,'magnitude of limiting error for R1(in ohm)=')
dR2=R2*er
disp(dR2,'magnitude of limiting error for R2(in ohm)=')