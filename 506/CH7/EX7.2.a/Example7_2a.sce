clear;
clc;

//Caption:Fabrication and Characteristics
//Given Data
y = 2.2;//from the figure y=2.2
Nob = 5*10^18//Uniform Concentration of Boron Profile

//y = 2.7/(2*(D*t)^0.5)
//2*(D*t)^0.5 = a
a = 2.7/y;
x = 2;//distance at which emitter junction is formed in micrometer
Nb = Nob*erfc(x/a);//boron Profile
disp('cm^-3',Nb,'Nb=');
disp('The boron diffusion equation is');
disp(a,'5*10^18*erfc x / ');
//At x=2 Np = Nb
//erfc(2/(2*(D*t)^0.5))=k
Nop=10^21;
k = Nb/Nop;
a = 2/2.7;
disp('The phosphorous diffusion equation is');
disp(a,'10^21*erfc x / ');


//end