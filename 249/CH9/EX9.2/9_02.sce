clear
clc
//Standard heat of reaction(J/mol) and Gibbs free energy(J/mol) 
Ho=-75300;Go=-14130;
R=8.3214;T1=298;
//With all specific heais alike,dCp=0
Hr=-Ho;
K298=exp(-Go/(R*T1));
//Taking different values of T
T1=[2;15;25;35;45;55;65;75;85;95];//degree celcius
T=[278;288;298;308;318;328;338;348;358;368];//kelvin
for i=1:10
K=K298*exp((Hr/R)*((1/T(i))-(1/298)));
XAe(i)=K/(K+1);
end
plot(T1,XAe)
xlabel('Temperature(C)')
ylabel('XAe')
disp(" From the graph we see temp must stay below 78 C if conversion of 75% or above is expected")



