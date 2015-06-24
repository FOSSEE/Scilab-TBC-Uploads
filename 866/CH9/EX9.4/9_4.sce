clc
//initialisation of variables
BeamB= 300 //mm
BeamL= 200 //mm
BeamT= 25 //mm
BeamT2= 20 //mm
alpha= 30 //degrees
Mz= 100*10^6*cosd(alpha)//Nmm
My= 100*10^6*sind(alpha)//Nmm
//CALCULATIONS
Iz= ((BeamL*BeamB^3)/12)-((BeamL-BeamT)*(BeamB-2*BeamT2)^3)/12
Iy= (2*BeamT2*BeamL^3/12)+((BeamB-2*BeamT2)*BeamT^3/12)
sigmaxtl= (+Mz/Iz)*(BeamB/2)+(My/Iy)*(BeamH/2)
sigmaxtr= (+Mz/Iz)*(BeamB/2)+(My/Iy)*(-BeamH/2)
inclination= atand((My*Iz)/(Mz*Iy))
//RESULTS   
printf ('Stress at top left of the beam= %.2fN/mm^2(Tension)',sigmaxtl) 
printf ('\n Stress at top right of the beam= %.2fN/mm^2(compression)',sigmaxtr) 
printf ('\n Incination= %.2fdegrees',inclination)
