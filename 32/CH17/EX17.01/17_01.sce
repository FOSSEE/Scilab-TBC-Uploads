//pathname=get_absolute_file_path('17.01.sce')
//filename=pathname+filesep()+'17.01-data.sci'
//exec(filename)
//L/D ratio:
r1=1.2
//Cylinder diameter(in m):
D=0.12
//Area of indicated diagram(in m^2):
A=30*10^(-4)
//Spring constant(in kN/m^2):
k=20*10^3
//Rpm of engine:
N=2000
//Percentage power lost:
r=0.10
//Stroke length(in m):
L=r1*D
//Length of indicator diagram(in m):
l=L/2
//Mep(in N/m^2):
mep=A*k*10^3/l
//Cross-sectional area of piston(in m^2):
A2=%pi*D^2/4
//Total indicated power for 4 cylinders(in W):
IP=4*mep*A2*L*N/(2*60)
//Fricitional loss(in W):
FP=r*IP
//Brake power available(in W):
BP=IP-FP
//Mechanical efficiency:
nm=BP/IP*100
printf("\n RESULT \n")
printf("\nIndicated power = %f W",IP)
printf("\nMechanical efficiency = %f percent",nm)