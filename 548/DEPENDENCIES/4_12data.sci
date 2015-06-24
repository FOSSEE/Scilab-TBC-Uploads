//Nozzle flow was described in example 4.9,so we can take data from eg 4.9
V1=580 //velocity at throat,m/s
Ve=1188 //velocity at exit,m/s
T1=833 //Temperature at throat,in Kelvin
Te=300 //Temperature at exit,in kelvin
R=287;//gas constant for air,J/Kg.K
y=1.4;// specific heat ratio for air
a=(y*R*T1)^0.5 //speed of sound at throat
Ae=(y*R*Te)^0.5 //speed of sound at exit
