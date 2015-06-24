clc
clear
//Initialization of variables
mr=3 //lb
hp=10 //hp
//calculations
h3=618 //Btu/lb
h1=131 //Btu/lb
Qe=mr*(h3-h1)
work=hp*2545/60
cop=Qe/work
//results
printf("Coefficient of performance = %.2f",cop)
