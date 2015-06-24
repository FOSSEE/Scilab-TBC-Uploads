clear;
clc;

//Example7.3[Cooling of Plastic Sheets by Forced Air]
//Given:-
T_p=95;//Temp of plastic Sheet[degree Celcius]
T_air=25;//Temp of air[degree Celcius]
v=3;//Velocity of flowing air[m/s]
L=0.6;//Length of plastic sheet[m]
w=1.2;//width[m]
k=0.02808;//[W/m.degree Celcius]
Pr=0.7202;//Prandtl Number
nu=1.896*10^(-5);//[m^2/s]
rho=1200;//[kg/m^3]
Cp=1700;//[J/kg.degree Celcius]
vp=(9/60);//Velocity of moving plastic[m/s]
tp=0.001;//Thickness of plastic[m]
ReC=5*10^5;//Crictical Reynolds Number
e=0.9;//emissivity
//Solution(a)
L1=2*L;//Considering both sides of plastic sheet[m]
ReL1=v*L1/nu;//Reynolds number
if(ReL1<ReC) then,
    disp("(a) Flow is laminar")
    Nu1=0.664*(ReL1^0.5)*(Pr^(1/3));
    disp(Nu1,"The nusselt number is")
    h=k*Nu1/L1;//[W/m^2.degree Celcius]
    As=L1*w;//[m^2]
    Q_conv=h*As*(T_p-T_air);//[W]
    disp("W",ceil(Q_conv),"The covection heat flow rate is")
    Q_rad=e*(5.67*10^(-8))*As*(((T_p+273)^4)-((T_air+273)^4));//[W]
    disp("W",(Q_rad),"Radiation heat transfer rate is")
    Q_total=Q_conv+Q_rad;//[W]
    disp("W",ceil(Q_total),"The rate of cooling of the plastic sheet by combined convection and radiation is")
else
    disp("(a) The Flow is turbulent")
end
//Solution(b)
At=w*tp;//[m^2]
m=rho*At*vp;//ass of th plastic rolling out per unit time[kg/s]
T2=T_p+(-Q_total/(m*Cp));//[degree Celcius]
disp("degree Celcius",T2,"(b) The temperature of the plastic sheet as it leaves the cooling section is")
