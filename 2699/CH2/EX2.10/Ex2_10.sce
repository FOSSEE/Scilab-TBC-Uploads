//EX2_10 PG-2.37
clc
T1=27;//initial temperature
Vfl=0.7;//forward voltage
Vtc=-2.3e-3;//voltage temperature coefficient
disp("at T2=25 degree C")
T2=50;
Vf2=Vfl+((T2-T1)*Vtc)
printf("\n therefore forward voltage drop at 50 degree C is %.4f V \n",Vf2)
disp("at T3=77 degree C")
T3=77;
Vf2=Vfl+((T3-T1)*Vtc)
printf("\n therefore forward voltage drop at 77 degree C is %.3f V",Vf2)
