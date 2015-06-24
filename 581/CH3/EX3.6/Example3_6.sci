
clear;
clc;

printf("\t Example 3.6\n");

T1=313; //entering temperature of cold water, K
T2=423; //Entering temperature of hot water, K
T3=363; //Exit temperature of hot water, K
Cc=20000; //heat capacity of cold water, W/K
Ch=10000; //heat capacity of hot water, W/K
U=500; //overall heat transfer coefficient, w/(m^2*K)
T4=T1+(Ch/Cc)*(T2-T3);
e=(T2-T3)/(T2-T1);

NTU=1.15;
A1=Ch*(NTU)/U;  // since NTU=1.15=U*A/Ch, A can be found by using this formula
printf("\t area is : %.2f m^2\n",A1);

//another way to calculate the area is by using log mean diameter method
LMD=(T2-T1-T3+T4)/log(110/20);
A2=Ch*(T2-T3)/(U*LMD);
printf("\t area is : %.2f m^2\n",A2);
printf("\t there is difference of 1 percent in answers which reflects graph reading inaccuracy.");
// we can see that area calulated is same in above 2 methods.
//End