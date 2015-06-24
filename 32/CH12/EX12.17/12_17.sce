//pathname=get_absolute_file_path('12.17.sce')
//filename=pathname+filesep()+'12.17-data.sci'
//exec(filename)
//Bore: 24 cm
//Stroke: 34 cm
//Engine speed: 150 rpm
//Piston rod diameter: 5cm
//Brake load: 120kg
//Spring balance reading: 100N.
//Brake wheel drum diameter: 100cm;
//Steam inlet state: 15 bar, 0.98 dry,
//Mean effective pressure at cover end: 1.8 bar
//Mean effective pressure at crank end: 1.6 bar
//Cooling water flow through condenser: 42 kg/min
//Rise in temperature of cooling water: 20°C
//Condensate discharged from condensor: 4 kg/min
//Temperature of condensate: 50°C
//From steam tables:
hf=844.89 //kJ/kg
hfg=1947.3 //kJ/kg
hcond=209.33 //kJ/kg
//Brake power(in kW):
BP=2*%pi*150*(120*9.81-100)*(100/2)*10^(-2)/(1000*60)
//IP at cover end(in kW):
IPco=1.8*10^2*0.34*%pi/4*(0.24)^2*150/60
//IP at crank end(in kW):
IPcr=1.6*10^2*0.34*%pi/4*(0.24^2-0.05^2)*150/60
//Total IP(in kW):
IP=IPco+IPcr
//Mechanical efficiency:
n=BP/IP
//Enthalpy of steam at inlet(in kJ/kg):
hs=hf+0.98*hfg
//Energy supplied by the steam(in kJ/kg):
E=hs-hcond
//Steam consumption rate(in kg/hr):
m=4*60
//Brake thermal efficiency:
nbth=3600/((m/BP)*E)*100
//Indicated steam consumption(in kg/kW.h):
ISFC=m/IP
printf("\nRESULT\n")
printf("\nBrake thermal efficiency = %f percent",nbth)
printf("\nIndicated specific steam consumption = %f kg/kW.h",ISFC)
