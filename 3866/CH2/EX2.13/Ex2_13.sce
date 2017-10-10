clear; close; clc;

T=100;
Ld=0.01;//in micrometer
eox=4*8.85*(10^(-14));
Cf=(2*eox*log(1+T))/%pi;//in F/cm
Cf1=(Cf)/(10^4);//in F/micrometer
Cox=(15*10^(-15));//in F
Cov=Cox*Ld;
Col=(Cf1+Cov)*(10^15);//in fF/micrometer
disp(Col,'overlap capacitance(in fF/micrometer)=');
