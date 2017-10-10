
clear//
//

//Variable Declaration
E_st=200 //Youngs Modulus of Steel in GPa
sigma_st_yp=290 //Yielding Stress in MPa
E_al=70 //Youngs Modulus of Aluminium in GPa
sigma_al_yp=330 //Yielding Stresss of Aluminium in MPa
A_st=900 //Area of steel rod in mm^2
A_al=600 //Area of Aluminium rod in mm^2
L_st=350 //Length of the steel rod in mm
L_al=250 //Length of the aluminium rod in mm

//Calculations
//Limit Load
P_st=sigma_st_yp*A_st*10**-3 //Load in limiting condition in kN
P_al=sigma_al_yp*A_al*10**-3 //Load in limiting condition in kN
P_L=P_st+2*P_al //Total Loading in kN

//Elastic Unloading
//Solving for Pst and Pal using matri approach
A=([[1,2;L_st*(E_st*A_st)**-1,-L_al*(E_al*A_al)**-1]])
B=([P_L;0])
C=linsolve(A,B) //Loading in kN

//Residual Stresses
P_res_st=-C(1)-P_st //Residual Load in kN
P_res_al=-C(2)-P_al //Residual Load in kN
sigma_st=P_res_st/A_st //residual Stress in Steel in MPa
sigma_al=P_res_al/A_al //residual Stress in Aluminium in MPa


//Result
printf("\n The Residual stresses are as follows")
printf("\n Sigma_st= %0.1f MPa and sigma_al= %0.1f MPa",sigma_st*10**3,sigma_al*10**3)
