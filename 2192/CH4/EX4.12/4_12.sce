clc,clear
printf('Example 4.12\n\n')

V=250;R=190
//part(i)
R1=1/(R^-1+R^-1) //equivalent resistance in parallel
P1=V^2/R1 //power drawn in parallel
printf('(i)Power drawn in parallel = %.2f watts',P1)

//part(ii)
R2=R+R //equivalent resistance in series
P2=V^2/R2 //power drawn in series
printf('\n(ii)Power drawn in series= %.2f watts',P2)
