//Section-10,Example-2,Page no.-CT.36
//To calculate q,dl_W,dl_E,dl_H.
clc;
q=0             //process is Adiabatic.
disp(q)
n=2
C_v=(3/2)*8.314
T_1=298
V_1=5
V_2=10
R=1                       //let
C_p=(5/2)*R
C_v=(3/2)*R
y=C_p/C_v
T_2=T_1*(V_1/V_2)^(y-1)
dl_E=n*C_v*8.314*(T_2-T_1)
disp(dl_H,'Internal energy change(Joules)')
W=dl_E
disp(W,'Joules')
dl_H=n*C_p*8.314*(T_2-T_1)
disp(dl_H,'Joules')

