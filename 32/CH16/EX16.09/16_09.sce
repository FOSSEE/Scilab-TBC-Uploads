//pathname=get_absolute_file_path('16.09.sce')
//filename=pathname+filesep()+'16.09-data.sci'
//exec(filename)
//Speed(in rpm):
N=200
//Index of compression:
n=1.2
//Gas constant(in kJ/kg.K):
R=0.287
//Specific heat(in kJ/kg.K):
Cp=1.0032
//Bore(in m):
D=0.30
//Stroke(in m):
L=0.40
//Clearance volume:
C=0.05
//Pressure(in bar):
p1=1
p5=2.9
p6=9
//Temperatures(in K):
T1=25+273
T5=T1
//Optimum intercooling pressure(in bar):
p2=sqrt(p6/p1)
//Volume of LP cylinder(in m^3/min):
Vlp=%pi*D^2/4*L*N*2
//Volumetric efficiency:
nvlp=1+C-C*(p2/p1)^(1/n)
//Volume of air inhaled in LP stage(in m^3/min):
V1=Vlp*nvlp
//Mass of air per minute(in kg/min):
m=p1*10^2*V1/(R*T1)
//Temperature after compression(in K):
T2=T1*(p2/p1)^((n-1)/n)
//Volume of air going into HP cylinder(in m^3/min):
V5=m*R*T5/(p5*10^2)
nvhp=nvlp
//Volume of HP cylinder(in m^3/min):
Vhp=V5/nvhp
//Diameter of bore(in m):
Dhp=sqrt(Vhp*4/(%pi*L*2*N))
//Heat rejected in intercooler(in kJ/min):
Q=m*Cp*(T2-T5)
//Temperature at state 6(in K):
T6=T5*(p6/p5)^((n-1)/n)
//Work input required for HP stage(in kJ/min):
Whp=n/(n-1)*m*R*(T6-T5)/(60*0.7457)
printf("\n RESULT \n")
printf("\nHeat rejected in intercooler = %f kJ/min",Q)
printf("\nBore of HP cylinder = %f cm",Dhp*100)
printf("\nHorse power required to drive HP stage = %f hp",Whp)