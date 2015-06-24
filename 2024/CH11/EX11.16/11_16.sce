clc
//Initialization of variables
H=-2199548 //Btu/mole
H1=18900 //Btu/mole
H2=-17784 //Btu/mole
//calculations
Hf=H-9*H1
Hl=Hf-H2
//results
printf("Higher heating value of gas = %d Btu/mole",Hf)
printf("\n Higher heating value of liquid = %d Btu/mole",Hl)
