// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.18


//Given Data Set in the Problem(SI Units)
Area=0.5
du=0.6
visc=0.81
y=2.4/100
dy=2.4/2/100

//Calculations
//Case 1:When the thin plate is in the middle
ss=visc*(du/dy)
F_upper=ss*Area
F_lower=ss*Area
F=F_upper+F_lower
mprintf("The Total shear force on the thin plate in the middle of the two plates is %f N \n",F)

//Case 2: When the palte is at a distanvce of 0.8 cm from one plate
dy_upper=y-0.8/100
dy_lower=0.8/100
F_upper2=visc*du/dy_upper*Area
F_lower2=visc*du/dy_lower*Area
F2=F_upper2+F_lower2
mprintf("The Total shear force on the thin plate at a distance 0.8 cm from one plate is %f N \n",F2)

