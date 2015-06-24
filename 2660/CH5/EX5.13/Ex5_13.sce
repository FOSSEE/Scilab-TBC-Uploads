clc
// Existing machine
pmp = 100000 // present market price in Rs
io = 50000 // immediate overhauling in Rs
asl = 5 // additional service life in years
aoc = 50000 // annual operating cost in Rs
svo = 10000 // salvage value after overhauling in Rs
pc = io + pmp // present cost in Rs
i = 10 // interest rate
i = 10/100
crf1 = (i*(1+i)^asl)/((1+i)^asl - 1) // capital recovery factor
AC1 = (pc - svo)*crf1 + svo*i + aoc // average cost in Rs
// proposed machine
n = 10 // expected economic life in years
ic = 300000 // initial cost in Rs
sv = 100000 // salvage value in Rs
o = 30000 // annual operating cost in Rs
crf2 = (i*(1+i)^10)/((1+i)^10 - 1)
AC2 = (ic - sv)*crf2 + sv*i + o // average cost in Rs
printf("Existing machine = Rs %0.3f \n Proposed machine = Rs %0.2f" , AC1 , AC2)
disp("Since the equivalent annual cost of proposed machine is less than that of the existing machine , therefore, the replacement is justified.")
// Answers vary due to round off error
