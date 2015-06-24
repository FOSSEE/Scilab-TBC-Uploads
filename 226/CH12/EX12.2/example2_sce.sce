//chapter 12
//example 12.2
//page 477
printf("\n")
printf("given")
Vcc=24;Ve=5;Vce=3;Rl=120*10^3;Vbe=.7
Rc=Rl/10
Vrc=Vcc-Vce-Ve
Ic=Vrc/Rc
Re=Ve/Ic//use 3.9Kohm standard value to make Ic littel less than design level
Re=3.9*10^3;
R2=10*Re
I2=(Ve+Vbe)/R2
R1=(Vcc-Ve-Vbe)/I2