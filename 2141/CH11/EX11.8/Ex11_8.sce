
clc
//initialisation of variables
Tca=304.2//K
Pca=72.9//atm
Tcb=191.1//K
Pcb=45.8//atm
ya=0.5939//atm
yb=0.4061//atm
Tcm=ya*Tca+yb*Tcb//K
Pcm=ya*Pca+yb*Pcb//atm
T=310.94//R
P=85.06//atm
Tr=T/Tcm//K
Pr=P/Pcm//atm
Zm=0.705
R=0.80206 //F
V1=0.2115//lit/mole
V2=0.2205 //mole
TrA=1.022 //K
PrA=1.17//atm
ZA=0.35 //mole
VA=(ZA*R*T)/(P)//lit/mole
TrB=1.63//K
PrB=1.857//atm
ZB=0.91
v=0.2050//Lit/mole
VB=0.273//Lit/mole
V=0.1733//Lit/mole
aA=3.606 //atm/lit^2/mole
bA=0.0428 //Lit/mole
aB=2.256//atm-lit^2/mole
bB=0.04271 //lit/mole
am=(ya*sqrt(aA)+yb*sqrt(aB))^2//atm-lit^2/mole
bm=ya*bA+yb*bB//Lit/mole
//CALCULATIONS
Dev=(V2-V1)/(V2)*100//percent
Dev1=(V2-V)/(V2)*100 //percent
Dev2=(V2-v)/(V2)*100//per cent
//RESULTS
printf('The kay s rul epercent deviation if thespecific volume =% f per cent',Dev)
printf('The ideal solution=% f percent',Dev1)
printf('van der waals equation of state=% f per cent',Dev2)
