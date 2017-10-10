// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.19


//Given Data Set in the Problem(SI Units)
gap=2.2/100
visc=2
SG=0.9
g=9.81
W_dens=SG*1000*g
Vol=1.2*1.2*0.2/100
Area=1.2*1.2
t=0.2/100
vel=0.15
W=40

//Calculations
dis_from_plate=(gap-t)/2          //Distance of the plate from each of the two plates
ss=visc*(vel/dis_from_plate)
Force_left=ss*1.2*1.2
Force_right=ss*1.2*1.2
F=Force_left+Force_right        //Sum of Force on the right + left side of the plate
Upthrust=W_dens*Vol             //Calculates Buoyant force on the plate 
F_down=W-Upthrust               //net downward force on the plate except shear forces
F_ToLift=F+F_down               //som total of all forces on the plate
mprintf("The Force required to lift the plate is %f N \n",F_ToLift)

