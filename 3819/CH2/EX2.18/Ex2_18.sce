// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 2 - Pressure and its measurements
// Problem 2.18

//Given Data Set in the Problem
dens=1000
g=9.81
A=2
dens1=1000
h1=30/100
h2=10/100
SG2=0.8
dens2=SG2*dens1
h3=12/100

//calculations
pA=dens*g*A
//pressure below X-X in left limb is pA-(dens1*g*h1)
p_left=pA-dens1*g*h1
//pressure below X-X in right  limb is pA-(dens1*g*h1)
                //p_right=pB-dens1*g*h2-dens2*g*h3
                //and ...P_left=P_right
pB=p_left+dens1*g*h2+dens2*g*h3
mprintf("The pressure in pipe B is %f N/cm^2\n",pB*10^-4)
