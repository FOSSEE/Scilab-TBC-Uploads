//Section-4,Example-2,Page no.-I.9
//To calculate the temperature of the sun's surface.
clc;
lm=677.4*10^-9        //Wavelength(nm)
M=57                  //Molar Mass(gm/mol)
d_lm=5.3*10^-12        //Width at half height(m)
R=8.314               //JK^-1mol^-1
C=3*10^8               //(m/s)
//d_lm=(((2*lm)/c)*((2*R*T*ln2)/M)^0.5)
T=((M*(C*d_lm)^2)/(2*R*log(2)*(2*lm)^2))
disp(T,'temperature of the sun surface(K)')
