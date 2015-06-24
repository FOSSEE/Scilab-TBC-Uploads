clc;
refractive_index=1.65 //refractive index
lamda=5893*1e-10;//wavelength
n=400;
t=n*lamda/(2*(refractive_index-1));//Thickness of film
disp(+'meter',t,'Thickness of film = ')
