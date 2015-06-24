//example3.24
clc
disp("50 kVA, P_i=500 W, P_cu(FL)=600 W")
disp("a)    cos(phi)=1, Full load")
n=(50*(10^3)*1*100)/((50*10^3)+500+600)
format(7)
disp("Therefore, %eta=(VA*cos(phi))/(VA*cos(phi)+P_i+P_cu(FL)) *100=(50*(10^3)*1*100)/((50*10^3)*1+500+600)= ")
k=50*sqrt(500/600)
format(8)
disp(k,"b) kVA at eta_max= kVA*sqrt(P_i/P_cu(FL))=50*sqrt(500/600)= ")
i=(50*10^3)/400
disp(i,"I_2(FL)[in A]=VA/V2=(50*10^3)/400=")
i=125*sqrt(500/600)
format(9)
disp(i,"I_2m(in A)=I_2(FL)*sqrt(P_i/P_cu(FL))=")
