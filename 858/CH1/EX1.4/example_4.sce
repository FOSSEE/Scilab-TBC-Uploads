clc
clear 
printf("example 1.4 page number 24\n\n")
//to find volume of NH3 dissolvable in water

p=1    //atm
H=2.7   //atm
x=p/H;

mole_ratio = (x)/(1-x);
moles_of_water=(100*1000)/18;
moles_of_NH3=mole_ratio*moles_of_water;

printf("moles of NH3 dissolved = %f\n\n",moles_of_NH3)

volume_NH3=(moles_of_NH3*22.4*293)/273;
printf("volume of NH3 dissolved = %f liters",volume_NH3)
