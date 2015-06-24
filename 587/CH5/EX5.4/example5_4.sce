clear;
clc;

//Example5.4[Heat Loss through Chimneys]
//Given:-
k=1.4;//Thermal conductivity of concrete[W/m.degree Celcius]
A=0.2*0.2;//Area of flow section[m^2]
t=0.2;//Thickness of the wall[m]
Ti=300+273;//Average temperature of gases[K]
hi=70;//Convection heat transfer coefficient inside the chimney[W/m^2]
ho=21;//Convection heat transfer coefficient outside the chimney[W/m^2]
To=20+273;//Temperature od outer air[Kelvin]
e=0.9;//Emissivity
delx=0.1,dely=0.1;//Nodal spacing [m]
//Solution:-
//Substituing values in all nodal equations and and solving these equations we get temperature at all nodes
function[temp]=fu9(T)
    temp(1)=7*T(1)-T(2)-T(3)-2865;
    temp(2)=-T(1)+8*T(2)-2*T(4)-2865;
    temp(3)=-T(1)+4*T(3)-2*T(4)-T(6);
    temp(4)=-T(2)-T(3)+4*T(4)-T(5)-T(7);
    temp(5)=-2*T(4)+4*T(5)-2*T(8);
    temp(6)=-T(2)-T(3)+3.5*T(6)+(0.3645*(10^(-9))*(T(6)^4))-456.2;
    temp(7)=-2*T(4)-T(6)+7*T(7)+(0.729*(10^(-9))*(T(7)^4))-T(8)-912.4;
    temp(8)=-2*T(5)-T(7)+7*T(8)+(0.729*(10^(-9))*(T(8)^4))-912.4;
    temp(9)=-T(8)+2.5*T(9)+(0.3645*(10^(-9))*(T(9)^4))-456.2;
    deff('[temp]=fu9(T)',['f_1=7*T(1)-T(2)-T(3)-2865','f_2=-T(1)+8*T(2)-2*T(4)-2865','f_3=-T(1)+4*T(3)-2*T(4)-T(6)','f_4=-T(2)-T(3)+4*T(4)-T(5)-T(7)','f_5=-2*T(4)+4*T(5)-2*T(8)','f_6=-T(2)-T(3)+3.5*T(6)+(0.3645*(10^(-9))*(T(6)^4))-456.2','f_7=-2*T(4)-T(6)+7*T(7)+(0.729*(10^(-9))*(T(7)^4))-T(8)-912.4','f_8=-2*T(5)-T(7)+7*T(8)+(0.729*(10^(-9))*(T(8)^4))-912.4','f_9=-T(8)+2.5*T(9)+(0.3645*(10^(-9))*(T(9)^4))-456.2'])
T1=T(1),T2=T(2),T3=T(3),T4=T(4),T5=T(5),T6=T(6),T7=T(7),T8=T(8),T9=T(9);
T_wall=(0.5*T6+T7+T8+0.5*T9)/(0.5+1+1+0.5);
disp("Kelvin",T_wall,"The average temperature at the outer surface of the chimney weighed by the surface area is")
Q_chimney=(ho*4*0.6*1*(T_wall-To))+(e*5.67*(10^-8)*0.6*1*((T_wall^4)-((260^4))));//[W]
disp("W",Q_chimney,"The heat transfer is")