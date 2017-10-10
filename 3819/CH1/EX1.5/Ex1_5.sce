// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.5

//Given Data Set in the Problem
Area=1500000/(1000)^2          //Area in m^2
du=0.4
dy=0.15/1000         //Distance between the plates In metres
visc=1/10           //In SI Units of Ns/m^2

//Calulations
//Force required to maintain that speed
ss=visc*(du/dy)                 //ss is the shear stress
Force=ss*Area                          //Force required= Shear stress * Area
mprintf("The Force required to maintain the speed is %f N\n",Force)

//Power required
Power=Force*du          //Power =(Force)*(Speed at which the plate has to be kept moving)
mprintf("The Power required to maintain the speed is %f W\n ",Power)

