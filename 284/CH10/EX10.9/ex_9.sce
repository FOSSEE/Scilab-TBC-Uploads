// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Current voltage relationship
//Ex_9//page 474
W=15*10^-4   //Width of MosFET
L=2*10^-4   //length of MOSFET
COX=6.9*10^-8    //oxide capacitance
VDS=0.10
ID1=35*10^-6   //DRAIN CURRENT
VGS1=1.5
ID2=75*10^-6
VGS2=2.5
mun=L*(ID2-ID1)/(W*COX*(VGS2-VGS1)*VDS)
printf('The inversion carrier mobility is %1.0f cm^2/V-s',mun)

