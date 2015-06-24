//Section-6,Example-6,Page no.-P.55
//To calculate the molecular weight of the polymer.
clc;
pi=(2.4*0.88)/(13.6*760)               //Osmotic pressure(atm)
R=0.0821                              //LatmK^-1mol^-1
T=273+37
M=(2.5/pi)*R*T
disp(M,'Molecular weight of the given polymer')
