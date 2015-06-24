clear all; clc;

disp("referring to figure A-14a,Va=650mph=953ft/s")
Ta=510
Va=953
Cp=0.24*778*32.2
T01=Ta+Va^2/(2*Cp)
printf(" T01=%0.1f R",T01)

disp("from Eta_i=(Ts01-Ta)/(T01-Ta),we have Ts01=Ta+Eta_i(T01-Ta)=577.9R")
pa=10.5
Ts01=577.9
Ta=510
//let x=k/(k-1)
x=3.5
p01=pa*(Ts01/Ta)^(x)
printf(" p01=%0.1f psia",p01)

p03=5*16.3
printf("\n p03=p02=%0.1f psia",p03)

T01=585.5
Ts02=T01*(5^0.2857)
printf("\n Ts02=%0.1f R",Ts02)

disp("From Eta_c= (Ts02-T01)/(T02-T01),we have T)2=T01 +(Ts02-T01)/Eta_c=1012.7R")
disp("For the turbojet w_c=w_t is assumed,we have T04=T03-(T02-T01)")
T03=1810
T02=1012.7
T01=585.5
T04=T03-(T02-T01)
printf(" T04= %0.1f R",T04)

disp("From Eta_t=(T03-T04)/(T03-Ts04)=1318.9R and p04=p03*(T_s04/T_03)^3.5=26.9 psia")

disp("To check whether the flow is choked at the nozzle exit,we calculate te choking condition from Tc=2*T_04/(k+1)")
T_04=1382.8
k=1.4
Tc=2*T_04/(k+1)
printf(" Tc= %0.1f R",Tc)

T04=1382.8
Tc=1152.3
Eta_n=0.92
T_sc=T04-(T04-Tc)/Eta_n
printf("\n T_sc= %0.1f R",T_sc)

p04=26.9
Tsc=1132.3
T04=1382.8
pc=p04*(Tsc/T04)^3.5
printf("\n pc= %0.2f psia",pc)

disp("Since pc>pa the flow is choked at the nozzle exit plane,and hence we have T5=Tc=1152.3R,ps=pc=13.36 psia")

k=1.4
R=53.33
T5=1152.3
Vj=(k*R*T5*32.2)^0.5//conversion factor=32.2
printf(" Vj= %0.1f ft/s",Vj)

p5=13.36
rho5=p5*144/(R*T5)//144 = conversion factor
printf("\n rho5 %0.4f lbn/ft^3",rho5)

disp("m=rho*V*A")

A5=60/(0.0313*1664.4)
printf(" A5= %0.2f ft^2",A5)

disp("F=m*(Vj-Va)+A5*(p5-pa)")
F=60*(1664.4-953)/32.2+1.15*(13.36-10.5)*144
printf(" F= %0.1f lbf",F)












































