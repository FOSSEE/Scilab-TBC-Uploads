// Variable declaration
l = [23 60 29; 28 79 60; 9 49 63 ]
alpha = 0.01
n = 400
chi_sq_thr = 13.277   

// Calculation
r1 = l(1,1:3)                       
r2 = l(2,1:3)                    
r3 = l(3,1:3)                     

e11 = sum(r1)*sum(l(1:3,1)) / (n)
e12 = sum(r1)*sum(l(1:3,2)) / (n)
e13 = sum(r1)*sum(l(1:3,3)) / (n)
e21 = sum(r2)*sum(l(1:3,1)) / (n)
e22 = sum(r2)*sum(l(1:3,2)) / (n)
e23 = sum(r2)*sum(l(1:3,3)) / (n)
e31 = sum(r3)*sum(l(1:3,1)) / (n)
e32 = sum(r3)*sum(l(1:3,2)) / (n)
e33 = sum(r3)*sum(l(1:3,3)) / (n)


q = [e11,e12,e13,e21,e22,e23,e31,e32,e33]  // list of expected frequency
p = [23,60,29,28,79,60,9,49,63]            // list of entries
r = []
chi_sq_prt = 0

for i  = 1:9
    r(i) = (p(i)-q(i))^2/q(i)
end

// Result
disp( r)
