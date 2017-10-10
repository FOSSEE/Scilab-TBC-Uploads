
clear//

//NOTE:The notation has been changed to simplify the coding process

//Variable Declaration
P_AB=4000 //Axial Force at section 1 in lb
P_BC=5000 //Axial Force at section 2 in lb
P_CD=7000 //Axial Force at section 3 in lb
A_1=1.2 //Area at section 1 in in^2
A_2=1.8 //Area at section 2 in in^2
A_3=1.6 //Area at section 3 in in^2

//Calculation
//S indicates sigma here
S_AB=P_AB/A_1 //Stress at section 1 in psi (T)
S_BC=P_BC/A_2 //Stress at section 2 in psi (C)
S_CD=P_CD/A_3 //Stress at section 3 in psi (C)

//Result
printf("\n The stress at the three sections is given as")
printf("\n Stress at section 1= %0.0f psi/in^2 section 2= %0.0f psi/in^2 section 3= %0.3f psi/in^2",S_AB,S_BC,S_CD)
