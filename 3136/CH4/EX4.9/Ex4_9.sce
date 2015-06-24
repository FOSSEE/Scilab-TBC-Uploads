clear all; clc;
//Values of tenPs0 and eff slightly vary from those given in the book. On calculating it was found out that the values given here are more accurate than those given in the textbook

disp("Use the motor calibration curves to convert input electrical power to shaft  power for the corresponding rotating speed. The result is provided below.")

Q1=[40 80 120 140 160 180 200 220];
dp1=[77 76 70 66 64 62 55 48];
Ps1=[5.2 5.6 6 6.5 7.2 7.6 7.75 7.8];
N1=[1775 1772 1765 1760 1755 1753 1750 1747];
table=[Q1' dp1' Ps1' N1'];
disp("   Q1  dp1(psi)  Ps1(hp)  N1(rpm)")
disp(table)

disp("Convert each operating condition of flow rate,pressure rise and shaft power from the test rotating speed to the rated speed of 1750rpm.")
Q0 = zeros(1,length(Q1));
dp0 = zeros(1,length(Q1));
tenPs0= zeros(1,length(Q1));
eff=zeros(1,length(Q1));
for i = 1: length(Q1)
   

   Q0(i)=Q1(i)*(1750/N1(i));
   dp0(i)=dp1(i)*(1750/N1(i))*(1750/N1(i));
   tenPs0(i)=10*Ps1(i)*(1750/N1(i))*(1750/N1(i))*(1750/N1(i));//values slightly differ from those given in the book,however on calculation the values given here are more accurate than those given in the book
   eff(i)=100*(Q0(i)*dp1(i)*144)/(449*550*tenPs0(i)/10);//since eff depends on tenPs0,hence they differ too
end

table2=[Q0' dp0' tenPs0' eff'];
disp("    Q0(gpm)     dp0(psi)     tenps(hp)      eff(%)")
disp(table2)

plot(Q0,dp0,'o',Q0,tenPs0,'d',Q0,eff,'s')
legend("dp(psi) ","10Ps(hp)","Eff (%)",-1)
xlabel("Q(gpm))")
ylabel("dp(psi, 10Ps(hp),Eff(%))")
set(gca(),"grid",[1 1])

