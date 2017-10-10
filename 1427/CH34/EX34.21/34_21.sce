//ques-34.21
//Calculating calories of sunlight required to synthesise 1kg of carbohydrate
clc
QY=1/20;//molecules/photon
n=1000/30;//moles of carbohydrate
w=600;//wavelength (in nm)
q=(n*2.859*10^7)/(QY*w);
printf("The calories of sunlight required are %d.",q);
