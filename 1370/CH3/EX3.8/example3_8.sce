//example3.8
clc
disp("The given values are, V1=200 V, V2=400 V, S=4 kVA, (R_1e)=0.15 ohm, P1= 60 W")
k=4/2
disp(k,"K=400/200=")
r=(2^2)*0.15
disp(r,"Therefore, (R_2e)[in ohm]=(K^2)(R_1e)=")
i=4000/400
disp(i,"I2(FL)[in A]=(kVA)/V2=")
disp("i) Total copper losses on full load,")
p=(10^2)*0.6
disp(p,"(P_cu)(FL)[in W]=[I2(FL)]^2 * (R_2e) =(10^2)*0.6 =")
disp("ii) cos(psi)=0.9 lagging and full load")
disp("Therefore, %n = [(VA rating cos(psi))/(VA rating cos(psi)+(P_i)+(P_cu)FL)]*100")
n=(4*0.9*10^5)/((4*0.9*10^3)+60+60)
format(6)
disp(n,"Therefore, n(% efficiency)=(4*0.9*10^3)/((4*0.9*10^3)+60+60) * 100 =")
disp("iii) cos(psi)=0.8 leading, half load")
disp("As half load, n=0.5")
p=(0.5^2)*60
disp(p,"(P_cu)(HL)[in W]=(n^2)*[(P_cu)(FL)]=(10.5^2)*60 =")
disp("Therefore, %n = [n*(VA rating cos(psi))/(n*VA rating cos(psi)+(P_i)+(P_cu)FL)]*100")
n=(4*0.5*0.8*10^5)/((4*0.8*0.5*10^3)+60+15)
disp(n," = ")
