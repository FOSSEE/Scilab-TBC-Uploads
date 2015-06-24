//Chapter-1,Example1_3_2,pg 1-15

As=28.1                                 //atomic weight of Si

Ag=69.7                                 //atomic weight of Ga

Aa=74.9                                 //atomic weight of As

as=5.43*10^-8                           //lattice constant of Si

aga=5.65*10^-8                          //lattice constant of GaAs

ns=8                                    //no of atoms/unit cell in Si

nga=4                                   //no of atoms/unit cell in GaAs

N=6.023*10^23                           //Avogadro's number

//p=(n*A)/(N*a^3) this is formula for density

//for Si

ps=(ns*As)/(N*as^3)

printf("           1) Density of Si=")

disp(ps)

printf("gm/cm^3")

//for GaAs

Aga=Ag+Aa                               //molecular wt of GaAs

pga=(nga*Aga)/(N*aga^3)

printf("    2) Density of GaAs=")

disp(pga)

printf("gm/cm^3")




