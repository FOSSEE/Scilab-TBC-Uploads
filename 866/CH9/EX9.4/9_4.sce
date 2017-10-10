clc
clear
//initialisation of variables
M= 100*10^6 //Nmm
BeamB= 300 //mm
BeamL= 200 //mm
BeamT= 25 //mm
BeamT2= 20 //mm
//CALCULATIONS
Iz= ((BeamL*BeamB^3)/12)-((BeamL-BeamT)*(BeamB-2*BeamT2)^3)/12
sigmaxbyY= -M/Iz
SB= sigmaxbyY*(BeamB/2)
ST= sigmaxbyY*(-BeamB/2)
//RESULTS   
printf ('Stress at top of the beam= %.2fN/mm^2(Tension)',ST) 
printf ('\n Stress at bottom of the beam= %.2fN/mm^2(compression)',SB)