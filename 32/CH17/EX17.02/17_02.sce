//pathname=get_absolute_file_path('17.02.sce')
//filename=pathname+filesep()+'17.02-data.sci'
//exec(filename)
//Indicator diagram area & length(in m^2 & m):
A=40*10^(-4)
l=0.08
//Bore(in m):
D=0.15
//Stroke(in m):
L=0.20
//Rpm of motor:
N=100
//Spring constant(in Pa/m):
k=1.5*10^8
//Mep(in Pa):
mep=A*k/l
//Indicated power(in kW):
IP=(%pi*D^2/4*L*mep*N/60*2)/10^3
printf("\n RESULT \n")
printf("\nPower required to drive =%f kW",IP)