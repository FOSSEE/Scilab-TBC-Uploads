
clc
//initialization of variables
//For window with two panes 3 cm apart
k = 0.57*10^-4 //cal/cm-sec-K
l = 3 //cm
g = 980 // cm/sec^2
Nu = 0.14 // cm^2/sec
DeltaT = 30 // Kelvin
T = 278 // Kelvin
L = 100 // cm
//calculations
h = (0.065*(k/l)*(((l^3)*g*DeltaT/((Nu^2)*T))^(1/3))*((l/L)^(1/9)))*10^4//for two pane in x*10^-4 cal/cm^2-sec-K
printf("The heat transfer co efficent for two panes is %.2f x10^-4 cal/cm^2-sec-K",h)

//For window with three panes 1.5 cm each apart
k = 0.57*10^-4 //cal/cm-sec-K
l = 1.5//cm
DeltaT = 15 // Kelvin
g = 980 // cm/sec^2
Nu = 0.14 // cm^2/sec
//calculations
h = (0.065*(k/l)*(((l^3)*g*DeltaT/((Nu^2)*T))^(1/3))*((l/L)^(1/9)))*10^4//for two pane in x*10^-4 cal/cm^2-sec-K
printf("\nThe heat transfer co efficent for three panes is %.2f x10^-4 cal/cm^2-sec-K",h/2)//Because there are two gaps

