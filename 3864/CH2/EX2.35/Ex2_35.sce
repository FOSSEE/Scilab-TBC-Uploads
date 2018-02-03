clear
//

//Initilization of Variables

A_c=500 //mm**2 //Area of each rod
A_s=500
A=500
P=2*10**5 //N //Weight
L=1 //m //Length of each rod
t=40 //degree celsius //temperature
E_s=2*10**5 //N/mm**2 //Modulus of Elasticity of steel rod
E_c=1*10**5 //N/mm**2 //modulus of Elastictiy  of copper rod
alpha_s=1.2*10**-5 //Per degree Celsius //temp coeff of steel rod
alpha_c=1.8*10**-5 //Per degree Celsius //Temp coeff of copper rod

//Calculations

//Let P_s be the force in each one of the copper rods and P_s be the force in steel rod
//2*P_c+P_s=P   .....................(1)

//Extension of copper bar=Extension of steel bar
//P_s*L*(A_s*E_s)**-1=P_c*L*(A_c*E_c)**-1
//after simplifying above equation we get
//P_s=2*P_c      ........................(2)

//Now substituting value of P_s in Equation 1 we get
P_c=P*4**-1
P_s=2*P_c

//Now EXtension due to copper Load
dell_1=P_c*L*1000*(A_c*E_c)**-1

//Part-2

//Due to rise of temperature of40 degree celsius

//As bars are rigidly joined,let P_c1 be the compressive forccesdeveloped in copper bar and P_s1 be the tensile force in steel causing changes
//P_s1=2*P_c1

//dell_s+dell_c=(alpha_c-alpha_s)*t*L      .......................................(3)
//P_s1*L*(A_s*E_s)**-1+P_c1*L*(A_c*E_c)**-1=(alpha_c-alpha_s)*t*L   ................(4)
//After substituting values in above equation and further simplifying we get,
P_c1=(alpha_c-alpha_s)*t*L*(2*(A_s*E_s)**-1+1*(A_c*E_c)**-1)**-1  //.................(5)
P_s1=2*P_c1

//Extension of bar due to temperature rise
dell_2=alpha_s*t*L+P_s1*L*(A_s*E_s)**-1

//Amount by which bar will descend
dell_3=dell_1+dell_2

//Load carried by steel bar
P_S=P_s+P_s1

//Load carried by copper bar
P_C=P_c-P_c1

//Part-3

//Let P_c1_1=P_c                 //For convenience
//Rise in temperature if Load is to be carried out by steel rod alone
P_c1_1=P_c

//From equation 5 
t=P_c1_1*(2*(A_s*E_s)**-1+1*(A_c*E_c)**-1)*(alpha_c-alpha_s)**-1

//result
printf("\n Extension Due top copper Load %0.2f  mm",dell_1)
printf("\n Load carried by each rod:P_s %0.2f  N",P_s)
printf("\n                         :P_c %0.2f  N",P_c)
printf("\n Rise in Temperature of steel rod should be %0.2f  degree Celsius",t)
