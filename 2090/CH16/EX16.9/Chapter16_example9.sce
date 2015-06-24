clc
clear
//Input data
n=6;//Number of cylinder
bp=130;//Brake power in kW
N=1800;//The speed of the engine in rpm 
CV=42000;//The calorific value of the fuel in kJ/kg
C=86;//The composition of carbon in the fuel in percent
H=13;//The composition of Hydrogen in the fuel in percent
NC=1;//The non combustibles present in the fuel in percent
na=85;//The absolute volumetric efficiency in percent
ni=38;//The indicated thermal efficiency in percent
nm=80;//The mechanical efficiency in percent
ac=110;//The excess consumption of air in percent
sb=1.2;//The stroke to the bore ratio 
da=1.3;//The density of air in kg/m^3
pi=3.141;//Mathematical constant of pi

//Calculations 
saf=(((C/100)*(32/12))+((H/100)*(8/1)))*(1/0.23);//The stoichiometric air fuel ratio 
aaf=saf*(1+1.1);//The actual air fuel ratio 
Ma=(0.23*32)+(0.77*28);//The molecular weight of air in kg/kmol
a=(C/100)/12;//For carbon balance 
b=(H/100)/2;//For hydrogen balace 
x=aaf/Ma;//Number of kmol of air per kg of fuel 
c=(0.21*x)-a-(b/2);//For oxygen balance
d1=0.79*x;//For nitrogen balance
ip=bp/(nm/100);//The indicated power in kW
mf=ip/[(ni/100)*CV];//The mass flow rate of fuel in kg/s
ma=mf*aaf;//The mass flow rate of air in kg/s
Va=ma/da;//Actual volume flow rate in m^3/s
Vs=Va/(na/100);//The swept volume per second in m^3/s
d=[[Vs*(4/pi)*(1/1.2)*((2*60)/N)*(1/n)]^(1/3)]*1000;//The diameter of the bore in mm
L=1.2*d;//The length of the stroke in mm
T=a+c+d1;//The total composition in kmol
CO2=(a/T)*100;//The volume of CO2 in %
O2=(c/T)*100;//The volume of O2 in %
N2=(d1/T)*100;//The volume of N2 in %

//Output
printf(' The volumetric composition of dry exhaust gas : \n   1) CO2 = %3.5f kmol   and   volume = %3.2f percent \n   2) O2 = %3.5f kmol   and   volume = %3.2f percent \n   3) N2 = %3.5f kmol   and   volume = %3.2f percent \n The bore of the engine = %3.0f mm \n The stroke of the engine = %3.1f mm ',a,CO2,c,O2,d1,N2,d,L)

