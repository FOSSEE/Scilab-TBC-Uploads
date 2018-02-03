clear
//

//Initilization of Variables

L=500 //mm //Length of rectangular cross section bar
A=20*40 //mm**2 //Area of rectangular cross section bar
P1=4*10**4 //N //Tensile Force on 20mm*40mm Faces
P2=2*10**5 //N //compressive force on 20mm*500mm Faces
P3=3*10**5 //N //Tensile Force on 40mm*500mm Faces
E=2*10**5 //N/mm**2 //Youngs Modulus 
mu=0.3 //Poissons Ratio

//Calculations

//Let P_x,P_y,P_z be the forces n x,y,z directions

P_x=P1*A**-1
P_y=P2*A**-1
P_z=P3*A**-1

//Let e_x,e_y,e_z be the strains in x,y,z directions
e_x=1*E**-1*(50+mu*20-15*mu)
e_y=1*E**-1*(-mu*50-20-mu*15)
e_z=1*E**-1*(-mu*50+mu*20+15)

//Volumetric strain
e_v=e_x+e_y+e_z

//Volume
V=20*40*500 //mm**3
//Change in Volume 
dell_v=e_v*V //mm**3

//Result
printf("\n The change in Volume is %0.2f  mm**3",dell_v)
