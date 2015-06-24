//Chapter-6, Illustration 6, Page 311
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
Tc=35;//Temperature of condenser in oC
Te=-15;//Temperature of evaporator in oC
m=10;//Mass of ice per day in tons
Tw=30;//Temperature of water in oC
Ti=-5;//Temperature of ice in oC
nv=0.65;//Volumetric efficiency
N=1200;//Speed in rpm
x=1.2;//Stroke to bore ratio
na=0.85;//Adiabatic efficiency
nm=0.95;//Mechanical efficiency
S=4.187;//Specific heat of water in kJ/kg
L=335;//Latent heat of ice in kJ/kg
h1=1667.24;//Enthalpy at Te from Ammonia chart in kJ/kg
h2=1925;//Enthalpy at Te from Ammonia chart in kJ/kg
h4=586.41;//Enthalpy at Tc from Ammonia chart in kJ/kg
v1=0.508;//Specific humidity at Te from Ammonia chart in (m^3)/kg

//CALCULATIONS
Qr=(((m*1000)/24)*((S*(Tw-0))+L+(1.94*(0-Ti))))/3600;//Refrigerating capacity in kW
mr=Qr/(h1-h4);//Refrigerant mass flow rate in kg/s
T2=112;//Discharge temperature in oC
D=((mr*v1*4*60)/(nv*3.14*x*N))^(1/3);//Cylinder diameter in m
L=x*D;//Stroke length in m
W=(mr*(h2-h1))/(na*nm);//Compressor motor power in kW
COPth=(h1-h4)/(h2-h1);//Theoretical COP
COPact=Qr/W;//Actual COP

//OUTPUT
mprintf('Refrigerating capacity of plant is %3.2f kW \n Refrigerant mass flow rate is %3.4f kg/s \n Discharge temperature is %3.0f oC \n Cylinder diameter is %3.3f m \n Stroke length is %3.3f m \n Compressor motor power is %3.2f kW \n Theoretical COP is %3.2f \n Actual COP is %3.2f',Qr,mr,T2,D,L,W,COPth,COPact)




//==============================END OF PROGRAM=================================
