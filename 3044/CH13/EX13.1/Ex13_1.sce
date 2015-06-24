// Variable declaration
A1 = [3.5,3.0,2.7]
A2 = [2.2,2.3,2.4]
B1 = [7.1,6.9,7.5]
B2 = [5.2,4.6,6.8]
C1 = [10.8,10.6,11.0]
C2 = [7.6,7.1,7.3]
a = 3
b = 2
r = 3
alpha = 0.01

// Calculation
FR_thr = 7.56   // for replications
FA_thr = 7.56   // for A
FB_thr = 10.04  // for B
FI_thr = 7.56   // Interaction effect

A_sum = sum(A1)+sum(A2)
B_sum = sum(B1)+sum(B2)
C_sum = sum(C1)+sum(C2)

T1 = sum(A1)+sum(B1)+sum(C1)
T2 = sum(A2)+sum(B2)+sum(C2)

T = A_sum+B_sum+C_sum

c = (T^2)/18
SST = 0

for i = 1:3
    SST = SST + A1(i)^2 + A2(i)^2 + B1(i)^2 + B2(i)^2 + C1(i)^2 + C2(i)^2
end

SST = SST - c

SSTR = (sum(A1)^2 + sum(A2)^2 + sum(B1)^2 + sum(B2)^2 + sum(C1)^2 + sum(C2)^2)/3 - c
SSR = 0.86
SSE = SST - SSTR - SSR

SSA = (1.0/6)*(A_sum^2 + B_sum^2 + C_sum^2) - c
SSB = (1.0/9)*(T1^2 + T2^2) - c

SSAB = SSTR - SSA - SSB

fr_prt = 1.72
fa_prt = 246
fb_prt = 68.8
fi_prt = 11.4

// Result
printf ( "SST: %.2f , SSTR: %.2f , SSE: %.2f , SSAB: %.2f ",SST,SSTR,SSE,SSAB)

printf ( "For replications: f = %.2f",fr_prt)
printf ( "fr_prt does not exceed 7.56, so we can not reject null hypothesis")
printf ( "For main effect of factor A: f = %.2f",fa_prt)
printf ( "fb_prt exceeds 7.56, so we reject null hypothesis")
printf ( "For main effect of factor B: f = %.2f",fb_prt)
printf ( "fb_prt exceeds 10.04, so we reject null hypothesis")
printf ( "For interaction: f = %.2f",fi_prt)
printf ( "fi_prt exceeds 7.56, so we reject null hypothesis")
