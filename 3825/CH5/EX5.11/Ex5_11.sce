clc
P1=200//pressure in kPa
V1=1//volume in metre-cube
R=8.314//universal gas constant
T1=127 //temperature in degree celsius
NHe=(P1*10^3*V1)/(R*(T1+273))//ideal gas law
mprintf("NHe=%fmol\n",NHe)//ans vary due to roundoff error
P2=400 //pressure in kPa
V2=1//volume in metre-cube
T2=227 //temperature in degree celsius
NN2=(P2*10^3*V2)/(R*(T2+273))//ideal gas law
mprintf("NN2=%fmol\n",NN2)//ans vary due to roundoff error
CvHe=1.5*R
CvN2=2.5*R
Tf=((NHe*CvHe*(T1+273))+(NN2*CvN2*(T2+273)))/((NN2*CvN2)+(NHe*CvHe))//temperature in kelvin from linear equation
mprintf("Tf=%fK\n",Tf)//ans vary due to roundoff error
Vf=2//volume in metre-cube
Pf=((NHe+NN2)*R*Tf)/Vf//ideal gas law
mprintf("Pf=%fkPa",Pf/1000)//ans vary due to roundoff error




