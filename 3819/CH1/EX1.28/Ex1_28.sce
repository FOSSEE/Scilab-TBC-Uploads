// A Textbook of Fluid Mecahnics and Hydraulic Machines - By R K Bansal
// Chapter 1-Properties of Fluid
// Problem 1.28

//Given Data Set in the Problem
d=2.5*10^-3
st_w=0.0725
st_m=0.52
SG_m=13.6
dens_w=1000
dens_m=13.6*1000
g=9.81

//Calculations
//Using rise=4*surface tension/(density *g *diameter of capillary)
//CAPILLARY RISE FOR WATER (theta =0,cos 0=1)
h=4*st_w/(dens_w*g*d)
mprintf("The rise for water is %f cm \n",h*100)

//CAPILLARY RISE FOR MERCURY    
//Using rise=4*surface tension/(density *g *diameter of capillary)
h=4*st_m*cos(%pi*130/180)/(dens_m*g*d)
mprintf("The rise  for mercury is  %f cm",h*100)
