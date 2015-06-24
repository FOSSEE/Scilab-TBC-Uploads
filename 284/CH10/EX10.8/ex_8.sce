// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Current voltage relationship
//Ex_8//page 473
L=1.25*10^-4     //channel length
mun=650   //mobility  of electrons
Cox=6.9*10^-8   //oxide capacitance
Vt=0.65   //thermal voltage
Idsat=4*10^-3 //saturated current
VGS=5
W=2*L*Idsat/(mun*Cox*(VGS-Vt)^2)*10^4
printf('The width of MOSFET such that the specified current is induced is %1.1f micrometer',W)