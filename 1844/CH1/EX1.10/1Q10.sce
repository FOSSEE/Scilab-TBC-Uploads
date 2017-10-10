clc
//Intialsing variables
S=100 //Scale on map 1cm=100m on ground
PMA= 20*30 // Plot area on map in sq cm
OPA= PMA * S^2 // Area of plot in sq m
printf ('Area of plot =%f sqm\n',OPA)

//Top sheet
S= 10^-6 // 1 sq km is represented by 1 sq cm
TSR= OPA *S
printf (' Represented by %f sqcm on Topo sheet\n',TSR)

RFV=1/(100*100) // R.F of the sheet of village map
RFT=1/(1*1000*100) //R.F of the scale of topo sheet

printf (' R.F of the sheet of village map =%f\n',RFV)
printf (' R.F of the scale of topo sheet =%f',RFT)




