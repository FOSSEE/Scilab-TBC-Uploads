
clear;
clc;
printf("\t Example 6_5_a\n");

//table 6.5.1
//S.NO.       Time (Hr)                   weight of wet material(kg)
//                0.0                                    5.314
//                0.4                                    5.238
//                0.8                                    5.162
//                1.0                                    5.124
//                1.4                                    5.048
//                1.8                                    4.972
//                2.2                                    4.895
//                2.6                                    4.819
//                3.0                                    4.743
//                3.4                                    4.667
//                4.2                                    4.524
//                4.6                                    4.468
//                5.0                                    4.426
//                6.0                                    4.340
//               infinite                                4.120

w=[5.314 5.238 5.162 5.124 5.048 4.972 4.895 4.819 4.743 4.667 4.524 4.468 4.426 4.340 4.120]
t=[0.0 0.4 0.8 1.0 1.4 1.8 2.2 2.6 3.0 3.4 4.2 4.6 5.0 6.0]
//part(i)
x=4.120;                            //weight of the dried material
   printf("\n moisture content (dry basis) ");
i=1;                                //looping starts
while(i<16)                        //calculation of moisture content
  p(i)=(w(i)-x)/x;
  printf("\n     :%f",p(i));
i=i+1;
end
    printf("\n   \n  Drying rate kg/hr*m^2");
i=2;
while(i<15)
     a(i)=(p(i-1)-p(i))*4.12/(t(i)-t(i-1));
     printf("\n      :%f  ",a(i));
     i=i+1;
end
a(1)=.19;
a(15)=0;
printf("\n\n from the above data it is clear that  critical moisture content Xcr=0.11");
plot(p,a,"o-");
title("Fig.6.19(a) Example3  Drying Rate curve");
xlabel("X-- Moisture content, X(kg/kg) ---->");
ylabel("Y-- Drying Rate, N(kg/hr.m^2 ---->");

//end