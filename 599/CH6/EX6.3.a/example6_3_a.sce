
clear;
clc;
printf("\t Example 6_3_a\n");
    //part(i)
//table wt of wet slab,kg  -- 5.0   4.0   3.6   3.5  3.4  3.06  2.85
//      drying rate,kg/m^2s-- 5.0   5.0   4.5   4.0  3.5  2.00  1.00
//      X,Dry basis        -- 1.0   0.6   .44   0.4  .36  .224  0.14
// equillibrium relation is given under
p = [1.0   0.6   .44   0.4  .36  .224  0.14];
a = [5.0   5.0   4.5   4.0  3.5  2.00  1.00];

i=1;                            //looping for calc. of 1/N 
while(i<8)                     //looping begins
t(i)=1/(a(i));
i=i+1;
end                         //as 1/N plot is needed

plot(p,a,"o-");
title("Fig.6.19(a) Example3  Drying Rate curve");
xlabel("X-- Moisture content, X(kg/kg) ---->");
ylabel("Y-- Drying Rate, N(kg/hr.m^2 ---->");
xset('window',1);
plot(p,t,"o-");
title("Fig.6.19(b) Example3 1/N vs X");
xlabel("X-- Moisture content, X(kg/kg) --->");
ylabel("Y-- 1/N, hr,m^2/kg --->");
//from X=0.6 to 0.44 ,falling rate is non linear and from X=.44 to .14 falling rate is linear

printf("\n from the graph we get critical moisture content as 0.6 kg moisture/kg dry solid");

//end