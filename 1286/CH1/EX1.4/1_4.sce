clc
//initialisation of variables
p0=0.70//metres
LC=0.1//millimetres
t= 100 //degrees
//CALCULATIONS
p100=p0*(1+(t/273))
T=(LC/(p100-p0))
//results
printf(' accuracy we can expect= % 1f C',T)
