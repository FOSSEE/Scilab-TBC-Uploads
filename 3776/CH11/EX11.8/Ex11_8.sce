clear
//Given
//
L = 15.0                                        //ft - The length of the each rod
A = 46.7                                        //sq.in - The length of the crossection
r_min = 4                                       //in - The radius of gyration
stress_yp = 36.0                                //ksi - the yielding point stress
E = 29*(10**3)                                  //ksi - The youngs modulus
lamda = L*12*((stress_yp/E)**0.5)/(4*(%pi)) //column slenderness ratio
if lamda<1.5 then
    printf("Since lamda<1.5 we can apply the AISC LFRD formula")
else
    printf("The following approach is wrong")
    end
stress_cr = (0.658**(lamda**2))*stress_yp    //ksi - The critical stress
P_n = stress_cr*A                            //kips //Nominal compressive strength
o = 0.85                                     //Resistance factor
p_u = o*P_n                                  //kips ,column design compressive strength
printf("\ncolumn design compressive strength  %0.3f kips",p_u)
// small variation due to rounding off errors
