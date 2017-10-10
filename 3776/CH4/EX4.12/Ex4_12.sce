clear
//Given
dai_bc =  240   //mm- daimeter of '8'bolt circle 
dia =  dai_bc/8 //Diameter of each bolt
A =  0.25*(dia**2)*3.14 // Area of a bolt
S_allow  = 40           //MPa - The maximum allowable allowable shear stress 
P_max =  (S_allow)*A    //N - The maximum allowable force 
D = 120.0               //mm - the distance from central axis 
T_allow =P_max*D*8      //N-m The allowable torsion on the 8 bolt combination 
printf("\n The allowable torsion on the 8 bolt combination %e N-m",T_allow *10**-3)
