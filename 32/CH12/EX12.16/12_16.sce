//pathname=get_absolute_file_path('12.16.sce')
//filename=pathname+filesep()+'12.16-data.sci'
//exec(filename)
//Bore diameter(in m):
d=0.38
//Stroke length(in m):
L=0.50
//Piston rod diameter(in m):
pd=0.05
//Speed of engine(in rpm):
N=150
//Steam consumption(in kg/min):
m=36
//Brake load(in kN):
F=7
//Brake diameter(in m):
bd=2
//Area of indicator diagram at cover end(in cm^2):
aco=28
//Area of indicator diagram at crank end(in cm^2):
acr=26
//Length of indicator diagram(in m):
l=0.07
//Spring scale(in kPa/mm):
s=15
//Mep at crank end(in kPa):
mepcr=acr*100*s/(l*10^3)
//Mep at cover end(in kPa):
mepco=aco*100*s/(l*10^3)
//IP at crank end(in kW):
IPcr=mepcr*L*%pi*(d^2-pd^2)/4*N/60
//IP at cover end(in kW):
IPco=mepco*L*%pi*(d^2)/4*N/60
//IP(in kW):
IP=IPcr+IPco
//Brake power(in kW):
BP=2*%pi*N/60*F*1
//Mechanical efficiency:
n=BP/IP
//ISFC(in kg/kW.h):
ISFC=m*60/IP
//BSFC(in kg/kW.h):
BSFC=m*60/BP
printf("\nRESULT\n")
printf("\nIndicated power = %f kW",IP)
printf("\nBrake power = %f kW",BP)
printf("\nIndicated specific steam consumption = %f kg/kW.h",ISFC)
printf("\nBrake specific steam consumption = %f kg/kW.h",BSFC)