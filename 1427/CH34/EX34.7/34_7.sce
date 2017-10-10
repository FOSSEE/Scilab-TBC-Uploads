//ques-34.7
//Calculating concentration of compound X in a solution
clc
EC=245;//molar extinction coefficient (in m^2/mol)
Io=100;//original intensity percentage
l=0.01;//length (in m)
reduction=25;//percentage reduction in intensity
I=Io-reduction;
C=log10(Io/I)/(EC*l);
printf("The concentratino o fcompound X is %.3f mol/kL.",C);
