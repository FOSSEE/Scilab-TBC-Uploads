//example2.2: The high pressure storage tank for a supersonic wind tunnel has a volume of 28.317 m^3.if air is stored at a pressure of 30 atm and a temperature of 299.44K,what is the mass of gas stored in the tank in Kg,and pound mass.
P=30*1.013*10^5;//1 atm=1.013*10^5 Pascal
R=287;//gas constant for air(J/Kg-K)
T=294.44 ;//temperature
density=P/(R*T);
V=28.317 ;//volume
M=density*V;//in kg
M1=2.20*M;//in pound