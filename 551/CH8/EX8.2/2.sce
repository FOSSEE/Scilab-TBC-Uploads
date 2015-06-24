clc
V=0.04; //m^3
p=120*10^5; //Pa
T=293; //K
R0=8314; 

disp("(i) kg of nitrogen the flask can hold")
M=28; //molecular weight of Nitrogen
R=R0/M;

m=p*V/R/T;
disp("kg of nitrogen=")
disp(m)
disp("kg")


disp("(ii) Temperature at which fusible plug should melt")
p=150*10^5; //Pa

T=p*V/R/m; //K
t=T-273; //0C
disp("Temperature =")
disp(t)
disp("°C")