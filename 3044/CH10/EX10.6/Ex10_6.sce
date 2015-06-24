// Variable declaration
alpha = 0.05                           // level of significance
semi = []
failures = []

// Calculation
// null hypothesis: if p1=p2=p3=p4 , Alternative hypothesis if p1,p2,p3,p4 all are not equal

chi_sq_thr = 7.815                     // theoritical value of chi square at alpha = 0.05 with v = 3
l = [31 42 22 25; 19 8 28 25]

semi = l(1,1:4)         // list of semiconductors
failures = l(2,1:4)     // list of failures

e11 = sum(semi)*sum(l(1:2,1)) / (sum(semi)+sum(failures))
e12 = sum(semi)*sum(l(1:2,2)) / (sum(semi)+sum(failures))
e13 = sum(semi)*sum(l(1:2,3)) / (sum(semi)+sum(failures))
e14 = sum(semi)*sum(l(1:2,4)) / (sum(semi)+sum(failures))
e21 = sum(failures)*sum(l(1:2,1)) / (sum(semi)+sum(failures))
e22 = sum(failures)*sum(l(1:2,2)) / (sum(semi)+sum(failures))
e23 = sum(failures)*sum(l(1:2,3)) / (sum(semi)+sum(failures))
e24 = sum(failures)*sum(l(1:2,4)) / (sum(semi)+sum(failures))

q = [e11,e12,e13,e14,e21,e22,e23,e24]  // list of expected frequency
p = [31,42,22,25,19,8,28,25]           // list of entries

chi_sq_prt = 0

for i  = 1:8
    chi_sq_prt = chi_sq_prt + (p(i)-q(i))^2 / q(i)
end

// Result
printf ( "Practical chi square value: %.3f",chi_sq_prt)

if(chi_sq_thr > chi_sq_prt) then
    printf ( "null hypothesis can not be rejected")
    printf ( "data dont refute to hypothesis")
else
    printf ( "null hypothesis must be rejected")
    printf ( "data refute to hypothesis")
end    

a1 = [0.62,0.84,0.44,0.50]
a2 = [1.0,1.1,1.2,1.3]
err1 = [0.13,0.10,0.14,0.14]
err2 = [0,0,0,0]
//ylim(0.9,1.5)

errbar(a1,a2,err1,err2)
title("Confidence intervals")

// Note : chart may be differ because scilab has errbar function which plots vertically.
