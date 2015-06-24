
clear;
clc;

printf("\t Example 5.5\n");
h=100; //convective heat transfer coefficient, W/(m^2*K)
k=0.63; // thermal conductivity,W/(m*K)
//the short exposure to the flame causes only a very superficial heating,so we consider the finger to be semi-infinite region.it turns out that the burn threshold of human skin,Tburn is about 65 C. h=100 W/(m^2*K), we shall assume that the thermal conductivity of human flesh equals that of its major component - water and that the thermal diffusivity is equal to the known value for beef.

// a=0.963, BE=h*x/k=0(since x=0 at the surface)

// b^2=(h^2)*(0.135*10^-6)*t/(k^2)=0.0034*t. On solving error function by trial and error method, we get the value of t=0.33 sec.

w=(1-0.963)*(%pi)^(0.5)/2;

// thus it would require about 1/3 se to bring the skin to burn point.

printf("it would require about 1/3 sec to bring the skin to burn point");

//end

