clear
//Given
A_angle = 2              //in*2 
stress_allow = 20        //ksi, The maximum alowable stress
F = stress_allow*A_angle //K, The maximum force
AD = 3                   //in, from the figure
DC = 1.06                //in, from the figure
strength_AWS = 5.56 // kips/in,Allowable strength according to AWS

//caliculations 
//momentum at point "d" is equal to 0
R_1 = (F*DC)/AD      //k,Resultant force developed by the weld
R_2 = (F*(AD-DC))/AD //k,Resultant force developed by the weld

l_1 = R_1/strength_AWS //in,Length of the Weld 1
l_2 = R_2/strength_AWS //in,Length of the Weld 2
       
printf("\n Length of the Weld 1: %0.2f in",l_1)
printf("\n Length of the Weld 2: %0.2f in",l_2)
