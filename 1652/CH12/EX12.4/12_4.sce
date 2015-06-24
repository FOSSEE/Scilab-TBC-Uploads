clc
//Initialization of variables
P=6  //atm
T=273.2+25 //K
P=23.8 //mm
V=0.018 //lt/mol
R=0.08206 //lt am/deg mol
//calculations
dPa=V*P*4536/(R*T*760)
Pa=dPa+P
//results
printf("Pressure = %.1f mm",Pa)
