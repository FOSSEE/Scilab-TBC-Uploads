//Given that
//the crossection to be approximately squre
Radius = 2 //in meter
side = 4 * 10^-3  //converted from mm to meter

//Sample Problem 1-3
printf("**Sample Problem 1-3**\n")
//making the volume equal
Length = 4/3 * %pi * Radius^3 / side^2
L_km = Length/10^3
order = round(log(L_km)/log(10)) //will give us order of magnitude
printf("The order of length of string is 10^%d km", order)