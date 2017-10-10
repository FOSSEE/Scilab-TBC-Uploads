// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.3

y=poly(0,"y")
u=2/3*y-y^2              // Defining the Velocity Function
a=derivat(u)             //Taking Derivative of the Velocity
visc=8.63/10             //Converting Dynamic Viscosity from poise to N s/m^2
ss1=visc*horner(a,0)        //Shear stress=(Dynamic viscosity *Velocity Gradient) at y=0
mprintf("The shear stress at y=0 is %f N/m^2 \n",ss1)
ss2=visc*horner(a,0.15)      //Shear stress=(Dynamic viscosity *Velocity Gradient) at y=0.15
mprintf("The shear stress at y=0.15 is %f ",ss2)
