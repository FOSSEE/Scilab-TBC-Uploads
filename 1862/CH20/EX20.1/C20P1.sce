clear
clc
//to find minimum speed of muon in the Earth's fram of reference
//to find minimum speed of muon in the muon's fram of reference

//Given:
//refer to figure 20-8(a)and (b) from page no. 457
//lifetime of muon
delta_t0 = 2.2//in microsesonds
//height of atmosphere
L0 = 100//in Km
//speed of light
c = 3.00e8//in m/s

//Solution:
//appiying Einstein's posulates
//in the Earth's fram of reference
//time of travel
delta_t = (L0*10^3)/c//in microseconds
//minimum speed of muon
u = sqrt((1-((delta_t0/(delta_t)*10^-6)^2)))//in m/s

//in the muon's fram of reference
//height of atmosphere
L = c*(delta_t0*10^-6)//in meters
//minimum speed of muon
u1 = sqrt((1-(((L)/(L0*1000))^2)))//in m/s 

printf ("\n\n Time of travel in the Earth fram of reference delta_t = \n\n %.2e seconds" ,delta_t);
printf ("\n\n Minimum speed of muon in the Earth fram of reference u = \n\n %.6fc" ,u);
printf ("\n\n Height of atmosphere in the muon fram of reference L = \n\n %3i meters" ,L);
printf ("\n\n Minimum speed of muon in the muon fram of reference u = \n\n %.6fc" ,u1);
