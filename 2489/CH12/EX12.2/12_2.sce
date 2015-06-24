clc
//Intitalisation of variables
clear
Ma= 153.8 //gms
Mb= 169.9 //gms
pa= 114.9 //mm
pb= 238.3 //mm
//CALCULATIONS
xa= (1/Ma)/((1/Ma)+(1/Mb))
xb= 1-xa
Pa= pa*xa
Pb= pb*xb
Pt= Pa+Pb
//RESULTS
printf ('PA = %.1f mm',Pa)
printf ('\n PB = %.1f mm',Pb)
printf ('\n Total vapour pressure = %.1f mm',Pt)
