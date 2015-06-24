clear
clc
T1=5100;//in K
T2=4530;//in K
A=16.24;//
B=13.38;//
PA=760;//in torr
PB=PA
TA=-(T1/(log10(PA)-A));//in K
printf('TA=%.1f K',TA)
TB=-(T2/(log10(PB)-B));//in K
printf('\nTB=%.1f K',TB)
l=round(TA)+3;
u=round(TB)-6;
T=l:5:u;
for i=1:length(T)
P_A=10^(-T1/T(i)+A);
P_B=10^(-T2/T(i)+B);
x_A(i)=(PA-P_B)/(P_A-P_B);
y_A(i)=x_A(i)*P_A/PB
end
plot(x_A,T,y_A,T); xlabel('Mole fraction xA');ylabel('T/K');

//There is no numerical solution to the given question only a graph is plotted
//page 152


