clc;
//Example 32.5
//page no 512
printf("Example 32.5 page no 512\n\n");
// a fluid is transported 4 miles under turbulent flow conditions
//we have two choices in designing the system
OC_a=20000//per year pressure drop costs for the 2 inch ID pipe,$
CRF=0.1//capital recovery factor for both pipe
OC_b=OC_a/16//operating cost associated with the pressure drop cost per year for 4 inch pipe
d=4*5280//distance,feet
c_a=1// 2 inch ID pipe cost per feet,$
c_b=6// 4 inch ID pipe cost per feet,$
CC_a=d*c_a*CRF//capital cost for  2 inch ID pipe,$
CC_b=d*c_b*CRF//capital cost for 4 inch ID pipe,$
TC_a= OC_a +CC_a//total cost associated with 2 inch pipe
printf("\n total cost with 2 inch pipe TC_a=%f $",TC_a);
TC_b=OC_b + CC_b//total cost associated with 4 inch pipe
printf("\n total cost with 4 inch pipe TC_b=%f $",TC_b);
//from result we can conclude that 4 inch pipe is more economical
