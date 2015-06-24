clc
clear
//Input data
p1=400;//Initial pressure of the gas in a turbine in kPa
t1=573;//Initial temperature of the gas in a turbine in K
p2=100;//Final pressure of the gas in a turbine in kPa
V=2.5;//It is the ratio of final volume to the inlet volume 
c2=50;//Velocity of the gas at exit in m/s
P=1000;//Power developed by the turbine in kW
cp=5.193;//Specific heat of the helium at constant pressure in kJ/kg K
G=8.314;//Gas constant in kNm/kgK
M=4;//Molecular weight of the helium

//Calculations
R=G/M;//Characteristic gas constant in kNm/kgK
v1=(R*t1)/p1;//Specific volume at the inlet in m^3/kg
v2=V*v1;//Specific volume at the outlet in m^3/kg
n=log(p2/p1)/log(v1/v2);//Polytropic index 
t2=[(t1)*((p2/p1)^((n-1)/n))];//Final temperature of the gas in a turbine in K
w=(n/(n-1))*(R*(t1))*[1-((p2*v2)/(p1*v1))];//Specific work in kJ/kg
K=c2^2/(2*1000);//Change in kinetic energy in kJ/kg
Ws=w-K;//Work done by the shaft in kJ/kg
q=Ws+(cp*(t2-t1))+K;//The heat transfer during the process in kJ/kg
m=P/Ws;//Mass flow rate of gas required in kg/s
A2=(m*v2)/c2;//Exit area of the turbine in m^2

//Output
printf('(a)The mass flow rate of the gas required m = %3.4f kg/s \n (b)The heat transfer during the process q = %3.2f kJ/kg \n (c)Exit area of the turbine A2 = %3.4f m^2 ',m,q,A2)
