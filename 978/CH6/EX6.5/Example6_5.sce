//chapter-6,Example6_5,pg 494

l=1*10^-2//axial length of plates

D=22*10^-2//distance between centre of plate and screen

Vap=1.3*10^3//acceleration mode voltage

del=1*10^-3//output in mm

Sd=500*l*(D/(del*Vap))//deflection senstivity

printf("deflection sensitivity\n")

printf("Sd=%.2f mm/V",Sd)