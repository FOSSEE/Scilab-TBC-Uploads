//example3.27
clc
disp("Load distribution in hours is as give in the table.")
disp("P_i=Iron loss=1.6 kW, P_cu(FL)=3.02 kW")
disp("As iron losses are constant for 24 hours, energy spent due to iron losses,")
p=1.6*24
disp(p,"P_i(in kWh)=1.6*24= ")
e=(6*160)+(4*80)+(1*0)
disp(e,"Energy Output(in kWh)= (6*160)+(4*80)+(1*0) = ")
disp("To calulate energy spent due to copper loss:")
disp("Load 1: 160 kW, cos(phi)=0.8")
k=160/0.8
disp(k,"Therefore, kVA=kW/cos(phi)=160/0.8=")
e=3.02*6
disp(e,"Therefore, E1(in kWh)=P_cu(FL)*hours=3.02*6= ")
disp("Load 2: 80kW, cos(phi)=1")
k=80/1
disp(k,"Therefore, kVA=kW/cos(phi)=80/1=")
n=80/200
disp(n,"Therefore, n=Fraction of load=(load kVA)/(kVA rating)=80/200=")
p=(0.4^2)*3.02
format(7)
disp(p,"Therefore, P_cu(in kW)=(n^2)*P_cu(FL)=(0.4^2)*3.02=")
e=0.4832*4
disp(e,"Therefore, E2(in kWh)=P_cu*hours=0.4832*4=")
t=38.4+18.12+1.9328
format(8)
disp(t,"Total energy spent(in kWh)=P_i+E1+E2=38.4+18.12+1.9328= ")
n=(1280*100)/(1280+58.4528)
disp(n,"Therefore, All day eta=(total energy output in 24 hours*100)/(total energy output for 24 hours+total energy spent)=(1280*100)/(1280+58.4528)=")
