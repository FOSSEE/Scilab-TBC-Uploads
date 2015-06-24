clc
//Initialization of variables
m=1
he=1148.8 //B/lbm
hi=1357 //B/lbm
Ve=100 //ft/sec
Vi=800 //ft/sec
//calculations
dW= m*(he-hi) + m*(Ve^2 - Vi^2)/(2*32.2*778)
dWhr=dW*3600
hp=-dWhr/2545
//results
printf("Horsepower output = %d hp",hp+1)
