clear;
clc;

//Example8.6[Heat Loss from the ducts of a Heating System]
Ti=80;//Inlet temp[degree Celcius]
A=0.2*0.2;//Area of cross section[m^2]
l=8;//Length of tube[m]
V=0.15;//[m^3/s]
Td=60;//Temperature of duct[degree Celcius]
//Properties of air at inlet conditions
rho=0.9994;//[kg/m^3]
Cp=1008;//[J/kg.degree Celcius]
k=0.02953;//[W/m.degree Celcius]
nu=2.097*10^(-5);//[m^2/s]
Pr=0.7154;//Prandtl number
//Solution:-
Dh=4*A/(4*0.2);//Hydraulic Diameter[m]
v_avg=V/A;//[m/s]
Re=v_avg*Dh/nu;
disp(Re,"Reynolds number is")
Lt=10*Dh;//Entry length
Nu=0.023*(Re^(0.8))*(Pr^(0.3));
h=Nu*k/Dh;//[W/m^2.degree Celcius]
As=4*0.2*l;//[m^2]
m_=rho*V;//[kg/s]
Te=Td-((Td-Ti)*exp((-h*As)/(m_*Cp)));//[degree Celcius]
disp("degree Celcius",Te,"The exit temperature of air is")
ln_delT=(Ti-Te)/(log((Td-Te)/(Td-Ti)));//[degree Celcius]
Q=h*As*ln_delT;//[W]
disp("respectively","W",round(Q),"and","degree Celcius",ln_delT,"The logrithmic mean temperature difference and the rate of heat loss from the air are")