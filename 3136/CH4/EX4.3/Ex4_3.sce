clear all; clc;

disp("The expression Ps=rho*Q*gH/Eta is used to calculate the shaft power for al finite flow rate conditions.For the shutoff condition,since Eta is zero,Ps has to be extrapolated. Also 0.1H is plotted instead of H in the same chart since its order of magnitude is higher than others.")

disp("The efficiency and NPSHR are read from the constant contours with interpolation and Ps is calculated with the above equation.")

Q = [40 80 120 160 200 220];
OneTenthH = [27 26.5 25.5 24 21.5 20];
eff = [30 42.5 52 56.7 57 54.5];
NPSHR = [5 5.5 6.1 7.3 11.5 16];

Ps = zeros(1,length(Q));

for i = 1: length(Q)
   

      Ps(i)=(62.4*0.00223*Q(i)*OneTenthH(i)*10)/((eff(i)/100)*550);//550 is conversion factor
      
end

disp("  Q(gpm) 1/10H(ft) eff(%) NPSHR(ft) Ps(hp)")

table=[Q' OneTenthH' eff' NPSHR'  Ps' ];
disp(table)

plot(Q,OneTenthH,'o',Q,NPSHR,'d',Q,Ps,'s',Q,eff,'*')
legend("OneTenthH(ft)","NPSHR(ft))","Ps(hp)","eff(%)",-1)
xlabel("Q(gpm)")
ylabel("OneTenthH(ft), NPSHR(ft) , Ps(hp) eff(%)")
set(gca(),"grid",[1 1])
