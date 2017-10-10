//lubricants//
//page 3.31 example 9//
clc
wt_oil=1.3//weight f oil saponified(gms)//
volume=0.8//volume of alcoholic KOH consumed to neutralize fatty acids(ml)//
normality_KOH=0.001//normality of KOH //
A=volume*normality_KOH*56/wt_oil//formula for acid value//
printf("\nAcid value of oil is %.5f mg/g",A);
if A<=0.1 then printf("\nAs the acid value is less than 0.1, oil can be used for lubrication");
else printf("\nAs the acid value is more than 0.1, oil cannot be used for lubrication");
    end