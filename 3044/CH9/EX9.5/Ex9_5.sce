// Variable declaration
alpha = 0.02      // level of significance
val1 = 0
val2 = 0

Mine1 = [8260,8130,8350,8070,8340]
Mine2 = [7950,7890,7900,8140,7920,7840]

// Calculation
Mean1 = sum(Mine1)/length(Mine1)
Mean2 = sum(Mine2)/length(Mine2)

for i = 1:length(Mine1)
    val1 = val1 + (Mean1-Mine1(i))^2
end

for i = 1:length(Mine2)
    val2 = val2 + (Mean2-Mine2(i))^2
end

// null hypothesis: if square(sigma1) = square(sigma2) , Alternative hypothesis if square(sigma1) < square(sigma2)
s1_square = val1/(length(Mine1)-1)
s2_square = val2/(length(Mine2)-1)

f_thr = 11.4                   // theoritical value of F at alpha = 0.02 for 4 & 5 DOF 
f_prt = s1_square / (s2_square)            // calculated value of F

// Result
printf ( "Practical F value: %.2f",f_prt)
if(f_thr > f_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "It can be assumed that variances of two populations sampled are equal.")
else
    printf ( "null hypothesis must be rejected")
    printf ( "It can not be assumed that variances of two populations sampled are equal.")
end
