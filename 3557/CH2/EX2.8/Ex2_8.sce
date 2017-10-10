//Example2.8//
//From Appendix 2
rAl=0.057;//nm //Ionic radius of Aluminium
rB=0.02;//nm //Ionic radius of Boron
rCa=0.106;//nm //Ionic radius of Calcium
rMg=0.078;//nm// Ionic radius of Magnesium
rSi=0.039;//nm //Ionic radius of Silicon
rTi=0.064;//nm //Ionic radius of Titanium
rO=0.132//nm //Ionic radius of Oxygen
r=rAl/rO
mprintf("r = %f ",r)
//For B2O3
r1=rB/rO
mprintf("\nr1 = %f ,giving CN=2",r1)
//For CaO
r2=rCa/rO
mprintf("\nr2 = %f ,giving CN=8",r2)
//For MgO
r3=rMg/rO
mprintf("\nr3 = %f ,giving CN=6",r3)
//For SiO2
r4=rSi/rO
mprintf("\nr4 = %f ,giving CN=4",r4)
//For TiO2
r5=rTi/rO
mprintf("\nr5 = %f ,giving CN=6",r5)
mprintf("\nThe coordination number for the cation is obtain from Table 2.1")
