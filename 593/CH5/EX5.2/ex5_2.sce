clear;
//clc();

// Example 5.2
// Page: 90
printf("Example-5.2  Page no.-90\n\n");

//***Data***//
p_2=0.005;// [psia]
R=1.987/18;//[1/R]

//*******//

//From the steam tables at the tripple point, we find 
T_1=460+32.018;//[R]
p_1=0.0887;//[psia]

//delta_h(solid to gas) = delta_h(sublimation) = 1218.7;//[Btu/lbm]
delta_H=1218.7;//[Btu/lbm]

//Assuming that the enthalpy change of vaporization is independent of temperature (a fairly good approximation in this case)
//we start with Eq. 5.10 and rearrange:
//1/T_2 = 1/T_1-(log(p_2/p_1))*R/delta_H
//So

T_2=1/(1/T_1-(log(p_2/p_1))*R/delta_H);//[R]
//Changing the temperature in farenheit
T_2F=T_2-460;//[F]

printf("The temperature is %f R",T_2F);
//BY linear interpolation in the steam tables, one finds -23.8 F. Because of imprecision of linear interpolation, these values are approximately equal.