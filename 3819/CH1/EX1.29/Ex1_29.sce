// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.29

//Given Data Set in the Problem
d=4*10^-3
st_w=0.073575
st_m=0.51
SG_m=13.6
dens_w=998
dens_m=13.6*1000
g=9.81

//Calculations
//CAPILLARY RISE FOR WATER (theta =0,cos 0=1)
//Using rise=4*surface tension/(density *g *diameter of capillary)
h=4*st_w/(dens_w*g*d)
mprintf("The rise for water is %f mm \n",h*1000)

//CAPILLARY RISE FOR MERCURY    
//Using rise=4*surface tension/(density *g *diameter of capillary)
h=4*st_m*cos(%pi*130/180)/(dens_m*g*d)
mprintf("The rise  for mercury is  %f m",h*100)
