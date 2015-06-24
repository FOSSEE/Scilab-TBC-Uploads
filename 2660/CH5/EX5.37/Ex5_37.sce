clc
// machine A
ic1 = 50000 // initial cost
hoc1 = 10 // hourly operating charges
pp1= 5 // pieces produced per hour
i = 15 // interest rate
i = i/100
oh = 2000 // operating hours
fc1 = ic1*i // fixed cost
vc1 = oh*hoc1 // variable cost
tc1 = fc1+vc1 // total charges
ao1 = oh*pp1 // annual output
c1 = tc1/ao1 // cost per unit
// machine B
ic2 = 80000 // initial cost
hoc2 = 8 // hourly operating charges
pp2= 8 // pieces produced per hour
fc2 = ic2*i // fixed cost
vc2 = oh*hoc2 // variable cost
tc2 = fc2+vc2 // total charges
ao2 = oh*pp2 // annual output
c2 = tc2/ao2 // cost per unit
printf("\n (i) Cost per unit for machine A = Rs %0.2f\n Cost per unit machine B = Rs %0.2f",c1,c2)
disp("machine B will be preferred")
// machine A
ao3 = 4000 // annual output
oc3 = ao3*hoc1/pp1 // operating charges 
tc3 = oc3+fc1 // total annual charge
c3 = tc3/ao3 // cost/piece 
// machine B
ao4 = 4000 // annual output
oc4 = ao4*hoc2/pp2 // operating charges 
tc4 = oc4+fc2 // total annual charge
c4 = tc4/ao4// cost/piece
printf("\n (ii) Cost per unit for machine A = Rs %0.2f\n Cost per unit machine B = Rs %0.2f",c3,c4)
disp("machine A will be preferred")
A = hoc1/pp1 // operating cost per piece on machine A
B = hoc2/pp2 // operating cost per piece on machine B
Q = fc2 - fc1 // annual production
printf("\n(iii) Annual production to make cost per piece equal for two machines = %d pieces" , Q )

