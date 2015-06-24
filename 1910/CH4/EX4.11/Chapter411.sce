// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 4, Example 11")
//A large slab wrought-iron is at a uniform temprature of Ti=550°C.
//The temprature of one surface is suddenly changed to Tinf=50°C
Tinf=50;
Ti=550; 
//For slab conductivity(k=60W/(m*K)),Thermal diffusivity(alpha=1.6*10^-5m^2/s)
//To calculate the time(t) required for the temprature to reach T=255°C at a depth of 80mm
k=60;
T=255;
alpha=1.6^10-5;
//Similarity parameter,eta=x/(2*(alpha*t)^0.5)=(10/t^0.5)
//((T-Tinf)/(Ti-Tinf))=erf(10/t^0.5)...where erf is the error function.
//Let ((T-Tinf)/(Ti-Tinf))=X
X=((T-Tinf)/(Ti-Tinf));
//This implies erf(10/t^0.5)=0.41
//We read from the table the value of eta(=10/t^0.5)=0.38....corresponding to erf(eta)=0.41
//Therefore 10/t^0.5=0.38...this implies t=(10/0.38)^2
disp("The time required for the temprature to reach 255°C at a depth of 80mm, in minutes is")
t=(10/0.38)^2/60















