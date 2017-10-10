clc;
clear;
G=41;//Mass
P=110;//Total loss
S=0.1;//Cooling surface area
lamda=29;//Emissivity
Cp=420;//Specific heat of the machine
theta_m=P/(S*lamda);
disp(theta_m,'Final steady temperature rise:')
Tow=(G*Cp)/(S*lamda);
disp(Tow,'Time constant is:')
t=[1:0.01:8];
T=((-t)/(Tow/3600));
theta=38*(1-exp(T));//The temperature rise time relation is
theta_t=theta_m/Tow;
disp(theta_t,'Initial rate of rise is:')
plot(t,theta);
xlabel('Temperature rise/Time relation (h)');
ylabel('Temperature rise(deg C)')
