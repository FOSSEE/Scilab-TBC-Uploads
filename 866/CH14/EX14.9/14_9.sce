clc
//initialisation of variables
BeamL= 60 //mm
BeamB= 100 //mm
Load= 60000 //N
Stress=  150 //N/mm^2
//CALCULATIONS
sigmax= Load/(BeamL*BeamB)
stressmax1= sqrt((Stress/2)^2-(sigmax^2/4))
Sy1= (2*stressmax1*BeamL*BeamB)/3
stressmax2= sqrt((Stress^2-(sigmax^2/4))/3-(sigmax^2/4))
Sy2= (2*stressmax2*BeamL*BeamB)/3  
//RESULTS
printf ('Shear force using Tresca= %.2e N',Sy1)
printf (' \n Shear force using Von Misses=%.2e N',Sy2)
