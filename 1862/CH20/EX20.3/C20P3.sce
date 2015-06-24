clear
clc
//to find distance between two flashes and time between two flashes 

//Given:
//seperated distance
delta_x = 2.45//in Km
//time intervel
delta_t = 5.35//in microseconds
//speed of frame S'
u = 0.855//times c
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying Lorentz transformations
//Lorentz parameters
gama = 1/(sqrt(1-u^2))
//refer to table 20-2
//using interval transformations
//distance between two flashe
delta_x_dash = gama*((delta_x*1000)-(u*c*(delta_t*10^-6)))//in meters //taking delta_t in seconds and delta_x in meters
//time between two flashes
delta_t_dash = gama*((delta_t*10^-6)-(u*c*(((delta_x*1000))/(c^2))))//in seconds //taking delta_t in seconds and delta_x in meters
delta_t_dash = nearfloat("succ",-3.147e-6)

printf ("\n\n Lorentz parameters gama = \n\n %.3f" ,gama);
printf ("\n\n Distance between two flashe delta_x_dash = \n\n %4i meters" ,delta_x_dash);
printf ("\n\n Time between two flashes delta_t_dash = \n\n %.3e seconds" ,delta_t_dash);
