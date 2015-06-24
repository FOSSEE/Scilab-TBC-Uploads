clc
X = 9.16 // production cost on turret lathe
N = 4000 // annual requirement
c = X*N // cost for 4000 pieces on turret lathe
n = 3800 // production of engine lathe
l = 23000 // labour cost
p = 3002 // power cost
i = 6 // interest rate
i = i/100
t = 4 // tax rate
t = t/100
d = 10 // allowance for depreciation in turret lathe
d = d/100
m = 6 // allowance for maintenance in turret lathe
m = m/100
b = 55/100 //labour burden
a = i+t+d+m 
tc = 64000 // first cost of engine lathe
c1 =(N*(l*(1+b)+p))/n+(tc*a) // cost for engine lathe
s = c1-c // savings 
amt = s/a // amount invested in turret lathe over the cost of engine lathe
printf("\n Amount invested in turret lathe over the cost of engine lathe = Rs %d" , amt)
// Answers vary due to round off error
