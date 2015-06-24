//caption:Find unknown resistance,relative limiting error  in percentage and in ohms
//Ex2.3
clc
clear
close
R1=90//resistance of arm wheatstone bridge(in ohm)
Rle1=0.5//limiting error for R1(in %)
R2=900//resistance of arm wheatstone bridge(in ohm)
Rle2=0.8//limiting error for R2(in %)
R3=825//resistance of arm wheatstone bridge(in ohm)
Rle3=0.6//limiting error for R3(in %)
Rx=(R2*R3)/R1
disp(Rx,'unknown resistance(in ohm)=')
dR1=(R1*Rle1)/100
dR2=(R2*Rle2)/100
dR3=(R3*Rle3)/100
dR=((dR2/R2)+(dR3/R3)+(dR1/R1))*100
disp(dR,'relative limiting error(in %)=')
Le=(dR*Rx)/100
disp(Le,'limiting error(in ohm)=')