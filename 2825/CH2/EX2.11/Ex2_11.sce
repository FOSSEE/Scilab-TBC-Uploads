//Ex2_11 Pg-91
clc

disp("(a) Hall coefficient is")
disp("      Rh = Eh/(Jx*B)")
Vh=21.4*10^(-3) //hall voltage
b=1.7*10^(-2) //breadth
Eh=Vh/b //electric field
t=0.052*10^(-3) //thickness
I=200*10^(-6) //current
Jx=I/(b*t) //current density
B=0.5 //magnetic field
Rh=Eh/(Jx*B)
printf("\n Hall coefficient = %.6f m^3/C \n\n",Rh)

disp("(b) Electrons per unit volume,")
e=1.6*10^(-19) //electron charge
n=1/(Rh*e) //electrons per unit volume
printf("\n\n Electrons per unit volume = %.0f electrons/m^3 \n\n",n)
V=195*10^(-3) //voltage
I=200*10^(-6) //current  
R=V/I //resistance
disp("Since R=(l/(A*sigma) = (l/(A*e*n*R))")
l=2.65*10^(-2) //length
w=1.7*10^(-2) //width
t=0.052*10^(-3) //thicknes
A=t*w //area
sigma=l/(A*e*n*R) //conductivity
printf("\n\n Conductivity = %.3f m^3/Vs",sigma)
