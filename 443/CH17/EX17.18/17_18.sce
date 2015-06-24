pathname=get_absolute_file_path('17_18.sce')
filename=pathname+filesep()+'17_18_data.sci'
exec(filename)
//Density of air(in kg/m^3)
Pa=p/(R*T)*10^5
//Volume flow rate of air at intake(in m^3/min)
Va=Cd*0.25*%pi*d^2*sqrt(2*g*dHg*(pHg/pa))
//Swept volume(in m^3/s)
Vs=0.25*%pi*D^2*L*N*0.5*(K/60)
//Volumeric efficiency
nv=Va/Vs*100
//Brake power(in kW)
bp=(W*N)/20000
//Brake mean effective pressure(in bar)
pbm=(bp*60000)/(L*0.25*%pi*D^2*N*0.5*K)*10^-5
//Torque(in N-m)
T=bp*60000/(2*%pi*N)
//Mass flow rate of fuel(in kg/h)
mf=(Vf/t)*10^-6*Pf*3600
//Brake specific fuel consumption(in kg/kWh)
bsfc=mf/bp
//O2 required/kg of fuel
O2=C*(32/12)+H*(8/1)
//Air required per kg of fuel
ma=O2/0.233
//Actual mass flow rate of air(in kg/s)
maa=Va*Pa
//Actual mass AF ratio
Afa=maa*3600/mf
//% of excess air
E=((Afa-ma)/ma)*100
printf("\n\nRESULTS\n\n")
printf("\nVolumetric efficiency:%f\n",nv)
printf("\nTorque:%f\n",T)
printf("\nBrake power:%f\n",bp)
printf("\nBrake specific fuel consumption:%f\n",bsfc)
printf("\nPercent of excess air:%f\n",E)