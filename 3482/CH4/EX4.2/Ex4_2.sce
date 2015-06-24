clc;
//Page 148

//At equillibrium equations are +-> sum Fx=0, +sum(M_A)=0, +sum(M_B)=0
//Sum Fx=0 gives
Bx=0;//kN
printf("Bx=%.0f kN \n",Bx);
//+sum(M_A)=0 gives -(70kN)(0.9m)+By(2.7m)-(27kN)(3.3m)-(27kN)(3.9m)=0, B assumed to be in +ve Y direction
By=(70*0.9+27*3.3+27*3.9)/2.7//kN
printf("By=%.2f kN  +ve sign shows reaction is directed as assumed \n",By);

//+sum(M_B)=0 gives -A(2.7m)+(70kN)(1.8m)-(27kN)(0.6m)-(27kN)(1.2m)=0, A assumed to be in +ve Y direction
A=(70*1.8-27*0.6-27*1.2)/2.7//kN
printf("A=%.2f kN  +ve sign shows reaction is directed as assumed \n",A);
//Answer displayed in KN
