//Chapter 5_Monolithic Components
//Capation : Resistance and Sheet resistance
//Example5.3: a)A base diffusion layer length is 100um and it's width is 10um.The sheet resistance of the layer is 100 ohm/square.Calculate its resistance.
//b) Calculate the sheet resistance of a 20um thick,5 ohm-cm ep-layer.
//a)Solution: 
L=100;//base diffusion layer in um
W=10;//base diffusion width in um
Rs=100;//sheet resistance in ohm/square
R=L*Rs/W;
disp('resistance of base diffusion layer is:')
disp('Ohm',R)
//b)Solution:
Pe=5*10^-2;//ep-layer resistivity in ucm
t=20*10^-6;//thickness of the layer in um
Rse=Pe/t;//sheet resitivity of ep-layer
disp('sheet resistance of ep-layer is:')
disp('Ohm',Rse)