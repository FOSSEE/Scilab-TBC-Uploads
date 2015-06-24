//example-22.10
//page no-673
//given
//critical field at 3K and 14 K are 21 A/m and 10 A/m
T1=7  //K
T2=14  //K
Hc1=21  //A/m
Hc2=10  //A/m
//DETERMINING CRITICAL TEMP
//as we know that H=H0*(1-T^2/Tc^2)
//so we get
//71=H0*(1-7^2/Tc^2)  ----(1)
//10=H0*(1-14^2/Tc^2) --(2)
//dividing 1 and 2 we get
//71/10=(Tc^2-7^2)/(Tc^2-14^2)
//on solving we get
Tc=sqrt(3626/11)  //K
//DETERMINING CRITICAL FIELD AT 0K
H0=Hc1/(1-T1^2/Tc^2)  //A/m
//DETERMINING CRITICAL FIELD AT 
T=4.2   //K
Hc=H0*(1-T^2/Tc^2)  //A/m
printf ("the critical temp is %f K\n, the critical field at 0K is %f A/m and critical field at 4.2 K is %f A/m",Tc,H0,Hc)
