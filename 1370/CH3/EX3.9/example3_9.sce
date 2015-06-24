//exmaple3.9
clc
disp("(P_i)=1.2 kW, (P_cu)(FL)=1.5 kW, kVA=100")
n=100*sqrt(1.2/1.5)
format(8)
disp(n,"i) kVA for (n_max)=kVA*sqrt((P_i)/(P_cu))=")
disp("ii) For n_max, (P_cu)=(P_i)=-1.2 kW")
disp("Therefore, %(n_max)=[(kVA for n_max)*cos(psi)]/[(kVA for n_max)*cos(psi)+2(P_i)]*100      ..cos(psi)=1")
n=(89.4427*10^5)/((89.4427*10^3)+(2*1.2*10^3))
format(7)
disp(n,"%eta_max(in percentage) = ")
