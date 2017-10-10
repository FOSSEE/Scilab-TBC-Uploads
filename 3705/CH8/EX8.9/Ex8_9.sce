
clear//

//Variable Declaration
sigma_w=120 //Working Stress in MPa
tau_w=70 //Working Shear in MPa

//Calcualtions
//Section a-a
M=3750 //Applied moment at section a-a in N.m
T=1500 //Applied Torque at section a-a in N.m

//After carrying out the variable based computation we compute d
d1=((124.62)/(sigma_w*10**3*%pi))**0.3333 //Diameter of the shaft in m
d2=((65.6)/(tau_w*10**3*%pi))**0.3333 //Diameter of the shaft in m
d=max(d1,d2) //Diameter of the shaft to be selected in m

//Result
printf("\n The diameter of the shaft to be selected is %0.1f mm",d*1000)
