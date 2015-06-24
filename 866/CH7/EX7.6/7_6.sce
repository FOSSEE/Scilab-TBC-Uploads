clc
//initialisation of variables
Ao= 2*300 //mm^2
Eo= 80000 //N/mm^2
Ei= 200000 //N/mm^2
Ai= 300 //mm^2
P= 100*10^3 //KN
deltaT= 100 //degrees
alphai= 1.2*10^-5 ///degreesc
alphao= 1.85*10^-5 ///degreesc
L= 4*10^3 //mm
//CALCULATIONS
sigmaiload= (Ei*P)/(Ao*Eo+Ai*Ei)
sigmaoload= (Eo*P)/(Ao*Eo+Ai*Ei)
sigmaotemp= (deltaT*(alphai-alphao)*Eo*Ai*Ei)/(Ao*Eo+Ai*Ei)
sigmaitemp= (deltaT*(alphai-alphao)*Eo*Ao*Ei)/(Ao*Eo+Ai*Ei)
sigmai= sigmaiload+sigmaitemp
sigmao= sigmaoload-sigmaotemp
deltaload= (P*L)/(Ao*Eo+Ai*Ei)
deltatemp= (L*deltaT)*(alphao*Ao*Eo+alphai*Ai*Ei)/(Ao*Eo+Ai*Ei)
displacement= deltatemp-deltaload
//RESULTS
printf ('sigmai= %.2f N/mm^2(stress in the column)',sigmai)
printf (' \n sigmao=% f N/mm^2(stress in the column)',sigmao)
printf (' \n displacement=% f mm(elongation)',displacement)




