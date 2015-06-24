// Estimating cup diameter and earing
clc
r_0 = 0.9
r_45 = 1.3
r_90 = 1.9
theta1 = 0 // angle in degree
theta2 = 45 // angle in degree
theta3 = 90 //  angle in degree
printf("\n Example 7.9")
R_avg = (r_0+2*r_45+r_90)/4
del_r = (r_0-2*r_45+r_90)/4
printf(" \n\n For average R value %.2f LDR of steel can be approximated to be 2.5 (deduced from figure).",R_avg)
if del_r>0 then
    printf("\n\n Ear will form in deep drawing of this material.")
end
