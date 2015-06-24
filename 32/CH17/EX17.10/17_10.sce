//pathname=get_absolute_file_path('17.10.sce')
//filename=pathname+filesep()+'17.10-data.sci'
//exec(filename)
//Speed of engine(in rpm):
N=1500
//Brake torque(in Nm):
T=300
//Fuel consumed(in kg):
m=4
//Cooling water circulated(in kg/min):
m1=15
//Calorific value of fuel(in kJ/kg):
C=42000
//Mechanical efficiency:
nm=0.90
//Brake power(in kW):
BP=2*%pi*N*T/(60*10^3)
printf("\n RESULT \n")
printf("\nBrake power = %f W",BP)
//BSFC(in kg/kW.hr):
BSFC=m*60/(m1*BP)
printf("\nBrake specific fuel consumption = %f kg/kW.hr",BSFC)
//Indicated power(in kW):
IP=BP/nm
//Indicated thermal efficiency:
nith=IP/(m*C/(m1*60))*100
printf("\nIndicated thermal efficiency = %f percent",nith)