//example3.10
clc
disp("20 kVA, N_max=0.98 at 15 kVA and cos(psi)=1, (P_i)=350 W")
disp("Load at n_max=kVA*sqrt(P_i/P_cu)")
disp("Therefore, 15=20*sqrt(350/P_cu)   i.e. ")
p=350/((15/20)^2)
format(8)
disp(p,"P_cu(FL)[in W]=")
disp("i) %n at cos(psi)=0.8 lag, full load")
disp("%n(FL)= [VA cos(psi) *100]/[(VA cos(psi))+(P_cu(FL))+(P_i)]=[20*10^3*(0.8) *100]/[(20*10^3*(0.8))+(622.222)+(350)]")
n=[20000*(0.8)*100]/[(20000*(0.8))+(622.222)+(350)]
format(7)
disp(n,"= ")
disp("ii) %n at cos(psi)=1 , full load")
n=(20000*100)/(20000+622.222+350)
format(8)
disp(n,"%n(FL)=(20*10^3*1*100)/((20*10^3*1)+622.222+350)=")
