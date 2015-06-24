//length//
pathname=get_absolute_file_path('12.07.sce')
filename=pathname+filesep()+'12.07-data.sci'
exec(filename)
//Mach number at section 1:
M1= sqrt(2/(k-1)*((p0/(p0+p1))^((k-1)/k)-1))
//Temperature at section 1(in K):
T1=T0/(1+(k-1)/2*(M1)^2)
V1=M1*sqrt(k*R*T1)
//Pressure at section 1(in kPa):
p1=g*dHg*(760-18.9)*10^-3
//Density at section 1(in kg/m^3):
d1=p1/R/T1
//At M1=0.190, 
//(p/p*)1:
P1=5.745
// (fLmax/Dh)1:
F1=16.38
//Value of L13(in m):
L13=F1*D/f
//Value of (p/p*)2:
P2=p2/p1*P1
//For this value, Value of M2 is obtained as 0.4
M2=0.4;
//For M=0.4, fLmX/D=2.309
F2=2.309
//Value of L23(in m):
L23=F2*D/f
//Length of duct between section 1 and 2(in m):
L12=L13-L23
printf("\n\nRESULTS\n\n")
printf("\n\nLength of duct required for choking from section 1: %3f m\n\n",L13)
printf("\n\nMach number section 2: %.3f \n\n",M2)
printf("\n\Length of duct between section 1 and 2: %.3f m\n\n",L12)
