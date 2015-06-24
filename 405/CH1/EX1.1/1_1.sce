clear;
clc;
printf("\t\t\tExample Number 1.1\n\n\n");
// conduction through copper plate
// illustration1.1
// solution

k = 370; // [W/m] at 250 degree celsius
dt = 100-400;//[degree celsius] temperature difference
dx = 3*10^(-2);//[m] thickness of plate
//calculating heat transfer per unit area from fourier's law
q = -k*dt/dx;//[MW/square meter]
printf("rate of heat transfer per unit area is %f MW/square meter",q/1000000);
