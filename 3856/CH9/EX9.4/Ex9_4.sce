//To calculate the values of Enthalpy and Entropy of Reaction

//Example 9.4

clc;

clear;

T=[872,973,1073,1173];//Temperatures in Kelvin

Kp=[1.8*10^-4,1.8*10^-3,1.08*10^-2,0.0480];//Equilibrium Constant

for i=1:4
    x(i)=1/T(i);//Defining x-axis of the graph as x=1/T
end 

for i=1:4
    y(i)=log(Kp(i));//Defining y-axis of the graph as y=log(Kp)
end

plot(x,y);//Plotting the Graph between 1/T and log(Kp)

xlabel("K/T", "fontsize", 2);//Putting the x-axis as K/T

ylabel("ln(Kp)", "fontsize", 2);//Putting the y-axis as ln(Kp)

m=-(y(2)-y(1))/(x(2)-x(1));//Slope of the Graph

R=8.314;//Universal Gas Constant in J K^-1 mol^-1

delH=R*m/1000;//Change in Enthalpy in kJ mol^-1

c=12.954;//y-Intercept of the Graph

delS=R*c;//Change in Entropy in J K^-1 mol^-1

printf("Change in Enthalpy of reaction = %.2f*10^2 kJ mol^-1",delH*10^-2);

printf("\n Entropy Change for the reaction = %.0f J K^-1 mol^-1",delS)
