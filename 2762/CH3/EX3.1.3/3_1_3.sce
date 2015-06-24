//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.1-3
//Principles of Momentum Transfer and Applications
//given data
basis=1;//taking basis as 1 m3 of packed bed
rho=962;//bulk density of packed bed
m=rho*basis;//total mass
rho2=1600;//density of solid cylinders 
V=m/rho2;//volume of the cylinder
E=(basis-V)/(basis);//void fraction
mprintf("void fraction = %f",E);
D=0.02;//diameter of cylinder
Av=6/D;// Av= Sp/Vp where Sp is the surface area of the particle and D is the diameter of the particle
Dp=6/Av;//effectice diameter
mprintf(" ii) effectice diameter = %f m",Dp);
a=(6/Dp)*(1-E);//value of a
mprintf(" iii) value of a= %f m-1",a)
//end
