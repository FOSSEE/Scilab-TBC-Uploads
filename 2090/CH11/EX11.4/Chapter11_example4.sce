clc
clear
//Input data
d=0.08;//The diameter of the bore in m
L=0.1;//The length of the stroke in m
r=8;//The compression ratio 
o=60;//The exhaust port open before BDC in degrees
v=60;//The exhaust port closes after BDC in degrees
a=15;//Air fuel ratio 
T=300;//The temperature of the mixture entering into the engine in K
p=1.05;//The pressure in the cylinder at the time of closing
R=290;//Real gas constant in J/kgK
ma=150;//Mass flow rate of air in kg/h
N=4000;//The speed of the engine in rpm
pi=3.1414;//Mathematical constant of pi

//Calculations
mf=ma/a;//Mass flow rate of fuel in kg/h
mac=ma+mf;//Actual mass flow rate in kg/h
r=(L*100)/2;//Half the length of the stroke in cm
Le=(r+(r*sin (pi/6)))/100;//Effective stroke length in m
Vse=(pi*d^2*Le)/4;//Swept volume corresponding to Le in m^3
V=(r/(r-1))*Vse;//Total volume corresponding to m^3
da=(p*10^5)/(R*T);//The density in kg/m^3
m=V*da;//Mass of mixture per cycle in kg/cycle
mi=m*60*N;//Ideal rate of mass flow in kg/h
Rsc=mac/mi;//Scavenging ratio 
nsc=(1-(exp(-Rsc)))*100;//Scavenging efficiency in percent
ntr=nsc/Rsc;//Trapping efficiency in percent

//Output
printf(' The scavenging ratio = %3.3f \n The scavenging efficiency = %3.2f percent \n The trapping efficiency = %3.2f percent ',Rsc,nsc,ntr)
    
