clc
cp=2.093; //kJ/kg0C
c=4.187;
Lf=333.33; //kJ/kg
m=1; //kg
T0=273; //K
T1=268; //K
T2=298; //K
Q_s=m*cp*(T0-T1);
Q_f=m*Lf;
Q_l=m*c*(T2-T0);
Q=Q_s+Q_f+Q_l;

disp("(i) Entropy increase of the universe")
ds_atm=-Q/T2;
ds_sys1=m*cp*log(T0/T1);
ds_sys2=Lf/T0;
ds_sys3=m*c*log(T2/T0);
ds_total=ds_sys1+ds_sys2+ds_sys3;
ds_universe=ds_total+ds_atm;

disp("Entropy increase of universe=")
disp(ds_universe)
disp("kJ/K")


disp("(ii) Minimum amount of work necessary to convert the water back into ice at – 5°C, Wmin.")
dS_refrigerator=0;

// dS_atm=(Q+W)/T;
// dS_universe >= 0
// dS_system=(s1-s4)
//dS_universe=dS_system+dS_refrigerator+dS_atm

dS_system=-1.6263; //kJ/kg K
T=298; //K

//For minimum work 
W_min=T*(-dS_system)-Q;
disp("Minimum work done =")
disp(W_min)
disp("kJ")