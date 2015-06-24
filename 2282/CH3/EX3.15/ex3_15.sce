// Example 3.15, page no-108
clear
clc


theta=30               //satellite inclination to the equitorial plan
//the extreme latitudes covered in northern and southern hemisphere are the same as orbit inclination

printf("Extreme Northern latitude covered = %.0f° N",theta)
printf("\n Extreme Southern latitude covered = %.0f° S",theta)
printf("\n\n In fact, the ground track would sweep\n all latitudes between %d°N and %d°S",theta,theta)
