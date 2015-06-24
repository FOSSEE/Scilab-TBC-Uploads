clear
clc
//to find time necessary for the rocket to pass particular point
//to find rest length for the rocket
//to find length of D of platform according to observer S'
//to find time required for S to pass entire length according to observer S' 
//to find //time interval between two events
//Given:
//refer to figure 20-19(a),(b),(c) from page no. 465
//llength of platform
L = 65//in meters
//relative speed of rocket
u = 0.80//times c
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying formule for relativity of length
//time necessary for the rocket to pass particular point
delta_t0 = L*10^6/(u*c)//in microseconds
//rest length for the rocket
L0 = L/(sqrt(1-(u^2)))//in meters
//length of D of platform according to observer S'
D0 = L
D = D0*(sqrt(1-(u^2)))//in meters
D = round(D)
//time required for S to pass entire length according to observer S' 
delta_t_dash = L0*10^6/(u*c)//in microseconds
//time measured by S and S' usind time dilation formula
delta_tdash = delta_t0/(sqrt(1-(u^2)))//in microseconds
//refer to table 20-2
//time interval between two events
deltat_dash = -(u*c*(-L))*10^6/((c^2)*(sqrt(1-(u^2))))//in microseconds
//time interval between two events according to S'
deltatdash = (L0-D)*10^6/(u*c)//in microseconds

printf ("\n\n Time necessary for the rocket to pass particular point delta_t0 = \n\n %.2f microseconds" ,delta_t0);
printf ("\n\n Rest length for the rocket L0 = \n\n %3i meters" ,L0);
printf ("\n\n Length of D of platform according to observer S-dash D = \n\n %2i meters" ,D);
printf ("\n\n Time required for S to pass entire length according to observer S-dash delta_t_dash = \n\n %.2f microseconds" ,delta_t_dash);
printf ("\n\n Time measured by S and S-dash usind time dilation formula delta_tdash = \n\n %.2f microseconds" ,delta_tdash);
printf ("\n\n Time interval between two events deltat_dash = \n\n %.2f microseconds" ,deltat_dash);
printf ("\n\n Time interval between two events according to S-dash deltatdash = \n\n %.2f microseconds" ,deltatdash);

