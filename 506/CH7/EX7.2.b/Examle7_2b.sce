clear;
clc;

//Caption:Fabrication and Characteristics
//Given Data
y = 2.2;//from the figure y=2.2
Nob = 5*10^18//Uniform Concentration of Boron Profile

//y = 2.7/(2*(D*t)^0.5)
//2*(D*t)^0.5 = a(let)
a = 2.7/y;
x = 2;//distance at which emitter junction is formed in micrometer
Nb = Nob*erfc(x/a);//boron Profile

//At x=2 Np = Nb
//erfc(2/(2*(D*t)^0.5))=k
Nop=10^21;
k = Nb/Nop;
a = 2/2.7;
//Time allowed for diffusion if diffusion of Phosphorous is conducted at 1100 degreeC
//From the figure D=3.8*10^-13 cm^2/sec
D=3.8*10^-13//in cm^2/sec
t = ((a*10^-4)/2)^2*(1/D);
disp('sec',t,'t=');

//end