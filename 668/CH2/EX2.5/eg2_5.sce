//a = 0.3*aAlN + 0.7*aGaN = 3.111
a = 3.111*10^-8; //in cm
q = 1.6*10^-19;
Exx = 0.006; //strain tensor
disp(Exx,"Exx = ")
Ezz = -0.6*0.006;
disp(Ezz,"Ezz = ")
Ppz = 0.0097; //in C/m2
disp("The pizoelectric effect induced polar charge then becomes Ppz = 0.0097 C/m2")
disp(Ppz/q*10^-4,"The pizoelectric effect induced polar charge (in electron charge per cm2)=")
Psp= 0.3*0.089 + (0.7-1)*0.029;
disp(Psp,"The piezoelectric charge the spontaneous polarization charge(in C/m2) is")
disp(Psp/q*10^-4,"The piezoelectric charge the spontaneous polarization charge(in electron charge per cm2) =")