//Chapter-5, Example 5.12, Page 185
//=============================================================================
clc
clear


//INPUT DATA
x=0.1;//Thickness of the slab in m
Ti=500;//Initial temperature in degree C
Tl=100;//Liquid temperature in degree C
h=1200;//Heat transfer coefficient in W/m^2.K
t=(1*60);//Time for immersion in s
k=215;//Thermal conductivity in W/m.K
a=(8.4*10^-5);//Thermal diffusivity in m^2/h
c=900;//Specific heat in J/kg/K
p=2700;//Density in kg/m^3

//CALCULATIONS
X=(a*t)/(x/2)^2;//Calculation for input in Heisler charts
B=(k/(h*(x/2)));//Calculation for input in Heisler charts
T1=0.68;//T value taken from Fig. 5.7 on page no. 183
Tc1=(T1*(Ti-Tl));//Temperature in degree C
To=Tc1+Tl;//Temperature in degree C
T2=0.880;//From Fig 5.8 on page no. 184 at x/L=1.0 and for k/hL=3.583, tempertaure in degree C
Tc2=(T2*(To-Tl))+Tl;//Temperature in degree C 
Y=(h^2*a*t)/(k^2);//Y to calculate the energy losses
Bi=(h*(x/2))/k;//Biot number
U=0.32;//U/Uo value from Fig. 5.9 on page no.185 
Uo=(p*c*x*(Ti-Tl));//For unit area in J/m^2
U1=(U*Uo)/(10^6);//Heat removed per unit surface area in MJ/m^2

//OUTPUT
mprintf('Temperature at the centreline and the surface 1 minute after the immersion is %3.2f degree C \n Heat removed per unit surface area is %3.1f*10^6 J/m^2',Tc2,U1)

//=================================END OF PROGRAM==============================
