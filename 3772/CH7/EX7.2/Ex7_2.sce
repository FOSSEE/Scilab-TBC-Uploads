// Problem no 7.2,Page no.184

clc;clear;
close;

P=295 //KW //Power
N=100 //R.p.m 
sigma_s=80 //MPa //shear stress


//Calculations

T_mean=((P*60000)*(2*%pi*N)**-1) //N*m

//T_max=T_mean=(%pi*D**3*sigma_s)*16**-1
D=((T_mean*16)*(%pi*sigma_s*10**6)**-1)**0.333 //m //Diameter of solid shaft

//For hollow shaft
//I_p_h=%pi*32**-1*(D_1**4-d_1**4) (equation 1)

//Now d_1=0.6*D_1
//substituting above value in equation 1,we get,

//I_p_h=0.0272*%pi*D_1**4

//For solid shaft
//I_p_s=%pi*32**-1*D**4

//T and sigma_s being the same then I_p*R**-1 will be the same for the two shafts
//Using relation  I_p_h*R_1**-1=I_p_s*R**-1

//Substituting values and simplifying we get

D_1=(D**3*0.8704**-1)**0.3333333 //m //External diameter of hollow shaft
d_1=0.6*D_1 //cm //Internal diameter of hollow shaft

A_s=%pi*4**-1*(D*10**2)**2 //cm**2 //Area of solid shaft
A_h=%pi*4**-1*(((D_1*10**2)**2)-((d_1*10**2)**2))

W=(A_s-A_h)*A_s**-1*100 //Percentage //Percentage saving in weight


//Result
printf("Diameter of solid shaft is %.5f m",D)
printf("\n Percentage saving in weight is %.2f",W);printf(" %%")
