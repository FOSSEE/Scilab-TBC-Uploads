//example2.29
clc
disp("P=4, N=1000 rpm, 80slots, psi=6*10^-2 Wb, 8 conductors/slot")
disp("A=P=4     ... Lap connected")
z=80*8
disp(z,"Z= Slots*conductors/slot=")
e=(4*100*640*6*10^-2)/240
disp(e,"E_g(in V)=(psi*P*N*Z)/(60*A)=")
disp("As coils are lap connected, parallel paths are 4 and all conductors in each parallel path are in series, carrying a current of 50 A")
a=4*50
disp(a,"Therefore,  I_a(in A)=A*current per parallel path=4*50=")
p=640*200
disp(p,"P(in W)=Electrical power output=[(E_g)*(I_a)]=")
