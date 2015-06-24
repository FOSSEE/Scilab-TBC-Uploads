//example 5.36

clear;
clc;

//Given:
Ti=5.44;//freezing point of pure benzene[K]
Tf=4.63;//freezing point of solution[K]
m1=2.12;//mass of the solute[gm]
m2=125;//mass of the benzene[gm]
Kf=5.12;//cryoscopic constant of pure benzene[K*Kg/mol]

//To find the molar mass of solute(M2)
dTf=Ti-Tf;//depression in freezing point[K]
M2=(m1*1000*Kf)/(m2*dTf);//molar mass of solute
printf("The molar mass of solute is %f",M2);



