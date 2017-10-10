clear
//Given 
hp = 200          //Horse power
stress_sh = 10000 //psi- shear stress
rpm_1 = 20.0      // The rpm at which this shaft1 operates 
rpm_2 = 20000.0   // The rpm at which this shaft2 operates
T_1= hp*63000.0/rpm_1 //in-lb Torsion due to rpm1
T_2= hp*63000/rpm_2   //in-lb Torsion due to rpm1
//caliculations 

//j/c=T/shear_T=K
k_1= T_1/stress_sh       //mm3
//c3=2K/3.14
c_1= ((2*k_1/3)**0.33) //mm - The radius of the shaft 
diamter_1 = 2*c_1        //mm - The diameter of the shaft
printf("\n The Diameter of the shaft1 is %0.2f mm",diamter_1)

//j/c=T/shear_T=K
k_2= T_2/stress_sh       //mm3
//c3=2K/3.14
c_2= ((2*k_2/3)**0.33) //mm - The radius of the shaft 
diamter_2 = 2*c_2        //mm - The diameter of the shaft
printf("\n The Diameter of the shaft2 is %0.3f mm",diamter_2)
