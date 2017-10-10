// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.27

//Given Data Set in the Problem(SI Units)
d=0.04*10^-3
p_outside=10.32*10^4
st=0.0725

//Calculations
//Using pressure =(4*Surface tension)/(diameter of the droplet)
p=4*st/d
//But this pressure obtained is p_inside-p_outside      thus,
p_inside=p_outside+p
mprintf("The pressure inside the droplet is %f n/cm^2",p_inside*10^-4);
