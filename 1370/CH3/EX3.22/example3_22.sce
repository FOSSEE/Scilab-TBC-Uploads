//example3.22
clc
disp("%eta_FL = 96%, cos(phi)=0.8, %eta_HL =97.2%, cos(phi)=1")
disp("%eta_FL=(VA *cos(phi))/(VA *cos(phi)+P_i+P_cu(FL))*100    i.e.  0.96=((259*10^3)*0.8)/((250*10^3)*0.8+P_i+P_cu(FL))")
disp("Therefore, P_i+P_cu(FL)=8333.333      ...(1)")
disp("%eta_HL=(n*VA*cos(phi))/(n*VA*cos(phi)+P_i+(n^2)*P_cu(FL)) *100       ...n=0.5 for half load")
disp("Therefore, 97.2=(0.5*250*(10^3)*1)/(0.5*250*(10^3)*1+P_i+(0.5^2)*P_cu(FL)) *100")
disp("Therefore, P_i+(0.5^2)*P_cu(FL)=3600.823      ..(2)")
disp("Solving equations (1) and (2),")
disp("3600.823-(0.5^2)*P_cu(FL)+P_cu(FL)=8333.333")
disp("0.75*(P_cu)FL=8333.333-3600.823")
p=(8333.333-3600.823)/0.75
format(9)
disp(p,"P_cu(FL)[in W]=")
p=8333.333-6310.013
format(9)
disp(p,"P_i(in W)=")
disp("At 75% of full load, n=0.75 and cos(phi)=0.8")
disp("Therefore, %eta=(n*VA*cos(phi))/(n*VA*cos(phi)+P_i+(n^2)*P_cu(FL)) *100")
disp("=(0.75*2508(10^3)*0.8)/(0.75*250*(10^3)*0.8+2023.319+(0.75^2)*6310.013)) *100")
n=(0.75*250*(10^3)*0.8*100)/((0.75*250*(10^3)*0.8)+2023.319+((0.75^2)*6310.013))
format(8)
disp(n,"= ")
