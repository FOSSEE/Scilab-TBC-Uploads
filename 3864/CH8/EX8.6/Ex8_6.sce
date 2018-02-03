clear
//
//

//Initilization of Variables

d=250 //mm //Diameter iron pipe
t=10 //mm //Thickness
d2=6 //mm //Diameter of steel
p=80 //N/mm**2 //stress
P=3 //N/mm**2 //Pressure
E_c=1*10**5 //N/mm**2
mu=0.3 //Poissons ratio
E_s=2*10**5 //N/mm**2
n=1 //No.of wires

//Calculations

L=6 //mm //Length of cyclinder

//Force Exerted by steel wire at diameterical section
F=p*2*%pi*d2**2*1*4**-1 //N

//Initial stress in cyclinder
f_c=F*(2*t*d2)**-1 //N/mm**2

//LEt due to fluid pressure alone stresses developed in steel wire be F_w and in cyclinder f1 and f2
f2=P*d*(4*t)**-1 //N/mm**2

//Considering the equilibrium of half the cyclinder, 6mm long we get
//F_w*2*%pi*4**-1*d2**2*n+f1*2*t*d2=P*d*d2
//After further simplifying we get
//F_w+2.122*f1=79.58        . ......................................(1)

//Equating strain in wire to circumferential strain in cyclinder 
//F_w=(f1-mu*f2)*E_s*E_c**-1 //N/mm**2
//After further simplifying we get
//F_w=2*f1-11.25    ....................................(2)

//Sub in equation in1 we get
f1=(79.58+11.25)*(4.122)**-1 //N/mm**2
F_w=2*f1-11.25  //N/mm**2

//Final stresses
//1) In steel Wir
sigma=F_w+p //N/mm**2

//2) In Cyclinde
sigma2=f1-f_c

//Result
printf("\n Final Stresses developed in:cyclinder is %0.2f  N/mm**2",sigma)
printf("\n                            :Steel is %0.2f  N/mm**2",sigma2)
