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

Area_1 = p_1/stress_allow  //in*2 ,the allowable area for the allowed stress
Area_2 = p_2/stress_allow  //in*2
printf("\n the allowable area for live load %0.3f is %0.3f in*2",L_n_1,Area_1)
printf("\n the allowable area for live load %0.3f is %0.3f in*2",L_n_2,Area_2)

//b
//area_crossection= (1.2*D_n +1.6L_n)/(phi*y_stress)

area_crossection_1= (1.2*D_n +1.6*L_n_1)/(phi*y_stress) //in*2,crossection area for first live load
area_crossection_2= (1.2*D_n +1.6*L_n_2)/(phi*y_stress) //in*2,crossection area for second live load
printf("\n the crossection area for live load %0.3f is %0.3f in*2",L_n_1,area_crossection_1)
printf("\n the crossection area for live load %0.3f is %0.3f in*2",L_n_2,area_crossection_2)
