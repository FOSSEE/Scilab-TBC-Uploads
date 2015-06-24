//in question pressure given is 1.013*10^5 but while solving it uses 
//10*1.013*10^5,so we use the later.
Po=10*1.013*10^5 ;//reservoir pressure in Pascal
To=333.33; //reservoir temperature in Kelvin
Me=3;//mach no. at test section
y=1.4; //specific heat ratio for air
R=287 ;//gas constant,J/Kg.K
Pe=Po*[1+(y-1)*Me^2/2]^((-y)/(y-1)) //exit pressure
Tstag=To //the stagnation point temperature remains same as that of total temperature(reservoir temperature) througout the compression 