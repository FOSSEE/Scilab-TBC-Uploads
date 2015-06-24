// Additional solved numerical questions  , Example(set 3) 13_b , pg 357
A=250    //area of B-H loop
f=50     //frequency   (in Hz)
d=7.5*10^3     //density    (in Kg/m^3)
M=10    //mass of core   (in Kg)

H=2000    //magnetic field intensity  (in A/m)
Xm=1000    //susceptibility
U0=4*%pi*10^-7      // relative permeability

V=M/d    //volume of sample   (in m^3)
N=60*60*f    //number of cycles per hour
EL=A*V*N    //energy loss per hour 
I=H*Xm     //intensity of magnetization
Ur=1+Xm
B=Ur*U0*H      //magnetic  flux density
printf("Energy loss per hour (in J)")
disp(EL)
printf("Intensity of magnetization (in Wb/m^3)")
disp(I)
printf("Magnetic flux density(in T)")
disp(B)
