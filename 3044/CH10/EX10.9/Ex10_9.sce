// Variable declaration
l = [ 78 56 54; 15 30 31; 7 14 15]

// Calculation
r1 = l(1,1:3)                         
r2 = l(2,1:3)
r3 = l(3,1:3)                     

e11 = sum(r1)*sum(l(1:3,1)) / (sum(r1)+sum(r2)+sum(r3))
e12 = sum(r1)*sum(l(1:3,2)) / (sum(r1)+sum(r2)+sum(r3))
e13 = sum(r1)*sum(l(1:3,3)) / (sum(r1)+sum(r2)+sum(r3))
e21 = sum(r2)*sum(l(1:3,1)) / (sum(r1)+sum(r2)+sum(r3))
e22 = sum(r2)*sum(l(1:3,2)) / (sum(r1)+sum(r2)+sum(r3))
e23 = sum(r2)*sum(l(1:3,3)) / (sum(r1)+sum(r2)+sum(r3))
e31 = sum(r3)*sum(l(1:3,1)) / (sum(r1)+sum(r2)+sum(r3))
e32 = sum(r3)*sum(l(1:3,2)) / (sum(r1)+sum(r2)+sum(r3))
e33 = sum(r3)*sum(l(1:3,3)) / (sum(r1)+sum(r2)+sum(r3))


q = [e11,e12,e13,e21,e22,e23,e31,e32,e33]                // list of expected frequency

// Result
disp( q)
