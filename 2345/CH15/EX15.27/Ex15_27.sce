//Finding magnetising current
//Example 15.27(pg. 409)
clc
clear
a=0.01//crosssectional area of ring in m^2
Uo=4*(%pi)*(10^-7)//absolute permeability
lf=1.25//leakage factor
Ur=400//permeability
N=175//no of turns
phig=0.8*(10^-3)//flux through air gap in Wb
Bg=phig/a//Flux density in air gap in Wb/m^2
Hg=Bg/Uo//magnetising force in air gap in AT/m
Lg=0.004//length of air gap in m
ATg=Hg*Lg//AT required for air gap in AT
phii=phig*lf//flux through iron path in Wb
Bi=phii/a//Flux density in iron path in Wb/m^2
Hi=Bi/(Uo*Ur)//magnetising force in iron path in AT/m
Li=1.5//length of iron path in m
ATi=Hi*Li//At required for iron path in AT
AT=ATi+ATg//total AT required 
I=ATg/N//Magnetising current required in A
printf('Thus the magnetising current required is %2.2f Amps',I)
