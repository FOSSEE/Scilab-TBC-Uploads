clc
//initialisation of variables
Fb= -2 //KN
Fc= 6//KN
Fd= 4 //KN
a1= 60 //degrees
a2= 60 //degrees
//CALCULATIONS
Rah= Fd*cosd(a2)-Fc*cosd(a1)
Nac= Rah
Ncd= Fd*cosd(a2)
//RESULTS
printf ('Rah= %.3f KN',Rah)
printf (' \n Nac=%.2f KN(compression)',Nac)
printf (' \n Ncd=%.3f KN(tension)',Ncd)
