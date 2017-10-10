clear;
clc;
printf("\t\t\tExample Number 1.3\n\n\n");
// limiting the heat loss through a fierglass insulating board
// illustration1.
// solution

dT = 150;//[degree celsius] temperature drop
k=0.05;//[W/m degree celcius] thermal conductivity of the board
q = 100;//[W/m^2] rate of heat loss per unit area
// heat flux is directly proportional to temperature difference and inversely to thickness
L = (k*dT)/q; // [m]Thickness of board


printf("The thickness of the fibre glass board to limit heat losses to 100W/m^2 should be %f m",L);

