clear all; clc;

disp("The relevant formulae are given as : ")
disp("Eta_1 =((62.4*0.00223*Q_1*H_1/(550*P_s1)))*100")
disp("Q_2=Q_1*N_2/N_1")
disp("H_2=H_1*(N_2/N_1)^2")
disp("P_s2=P_s1*((N_2/N_1)^3)")
disp("H and P_s at Q=0 are obtained with extrapolition")

Q_1= [0 285 435 540 785 920 1275];
H_1= [205 200 195 190 186 172 130];
P_s1=[28 31 36 42 44 49 58];

Eta_1 = zeros(1,length(Q_1));
Q_2=zeros(1,length(Q_1));
H_2=zeros(1,length(Q_1));
P_s2=zeros(1,length(Q_1));
Eta_2=zeros(1,length(Q_1));

for i = 1: length(Q_1)
   

    Eta_1(i) =((62.4*0.00223*Q_1(i)*H_1(i)/(550*P_s1(i))))*100;//multiplied by 100 to get answer in percentage
    Q_2(i) = Q_1(i)*1850/1350;//Since Q2=Q1*N2/N1 and N2=1850 and N1=1350
    H_2(i) = H_1(i)*((1850/1350)^2);//Since H2=H1*((N2/N1)^2)
    P_s2(i)=P_s1(i)*((1850/1350)^3)
    Eta_2(i)=Eta_1(i)
end

table = [Q_1'H_1'P_s1'Eta_1'Q_2'H_2'P_s2'Eta_2'];
disp("  Q_1(gpm)  H_1(ft)   P_s1(hp)  Eta_1(%)    Q_2(gpm)        H_2(ft)      P_s2(hp)      Eta_2(%)")
disp(table)

figure()
plot(Q_1,H_1,'o',Q_1,P_s1,'d',Q_1,Eta_1,'s')
legend("H_1(ft)","P_s1(hp)","Eta_1(%)",-1)
xlabel("Q_1(gpm)")
ylabel("H_1(ft), P_s1(hp) , Eta_1(%)")
set(gca(),"grid",[1 1])

figure(1)
plot(Q_2,H_2,'o',Q_2,P_s2,'d',Q_2,Eta_2,'s')
legend("H_2(ft)","Ps_2(hp)","Eta_2(%)",-1)
xlabel("Q_2(gpm)")
ylabel("H_2(ft), Ps_2(hp) , Eta_2(%)")
set(gca(),"grid",[1 1])












