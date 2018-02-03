clear
//Given
D_n = 5.0           //kips, dead load
L_n_1 = 1.0         //kips ,live load 1
L_n_2 = 15          //kips ,live load 2
stress_allow = 22   //ksi
phi = 0.9           //probalistic coefficients
y_stress = 36       //ksi,Yeild strength
//According to AISR

//a
p_1 = D_n + L_n_1 //kips since the total load is sum of dead load and live load
p_2 = D_n + L_n_2 //kips, For second live load

Area_1 = p_1/stress_allow  //sq.in ,the allowable area for the allowed stress
Area_2 = p_2/stress_allow  //sq.in
printf("\n the allowable area for live load %0.3f is %0.3f sq.in",L_n_1,Area_1)
printf("\n the allowable area for live load %0.3f is %0.3f sq.in",L_n_2,Area_2)

//b
//area_crossection= (1.2*D_n +1.6L_n)/(phi*y_stress)

area_crossection_1= (1.2*D_n +1.6*L_n_1)/(phi*y_stress) //sq.in,crossection area for first live load
area_crossection_2= (1.2*D_n +1.6*L_n_2)/(phi*y_stress) //sq.in,crossection area for second live load
printf("\n the crossection area for live load %0.3f is %0.3f sq.in",L_n_1,area_crossection_1)
printf("\n the crossection area for live load %0.3f is %0.3f sq.in",L_n_2,area_crossection_2)

//c

//calculating safety indices for a)

mu_r1=1.05*Area_1*y_stress//kips
del_R=0.11
mu_q1 = 6//kips
del_q1 = 0.093

mu_r2=1.05*Area_2 *y_stress//kips
mu_q2 = 20//kips
del_q2 = 0.189

beta_1 = log(mu_r1/mu_q1)/(del_R**2+del_q1**2)**0.5
beta_2 = log(mu_r2/mu_q2)/(del_R**2+del_q2**2)**0.5



printf("\n Safety index for a) beta1  is %0.3f ",beta_1)
printf("\n Safety index for a) beta2  is %0.3f ",beta_2)








//calculating safety indices for b)

mu_r1=1.05*area_crossection_1*y_stress//kips
del_R=0.11
mu_q1 = 6//kips
del_q1 = 0.093

mu_r2=1.05*area_crossection_2*y_stress//kips
mu_q2 = 20//kips
del_q2 = 0.189

beta_1 = log(mu_r1/mu_q1)/(del_R**2+del_q1**2)**0.5
beta_2 = log(mu_r2/mu_q2)/(del_R**2+del_q2**2)**0.5

beta_1 = log(mu_r1/mu_q1)/(del_R**2+del_q1**2)**0.5
beta_2 = log(mu_r2/mu_q2)/(del_R**2+del_q2**2)**0.5

printf("\n Safety index for b) beta1  is %0.3f ",beta_1)
printf("\n Safety index for b) beta2  is %0.3f ",beta_2)
