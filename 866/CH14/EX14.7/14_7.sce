clc
//initialisation of variables
sigmax= 140 //N/mm^2
sigmay= -70 //N/mm^2
Txy= 60 //N/mm^2
T= 225 //N/mm^2
//CALCULATIONS
sigma1= (sigmax+sigmay)/2+(sqrt((sigmax-sigmay)^2+4*(Txy^2)))/2
sigma2= (sigmax+sigmay)/2-(sqrt((sigmax-sigmay)^2+4*(Txy^2)))/2
sigmaY= sigma1-sigma2
sigmaY1= sqrt(sigma1^2+sigma2^2-sigma1*sigma2)
if(sigmaY>T)
    disp("Tresca theory failure has ocurred")
else
    disp("Tresca theory failed")
end
if(sigmaY1<T)
    disp("According to Von Mises theory material has not failed")
else
    disp("According to Von Mises theory material has failed")
end
