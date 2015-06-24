clc
C = 80000 // cost of new machine installed and tooled in Rs
nel = 2 // number of engine lathes
c = 32000*nel // first cost of engine lathe
N = 4000 // annual production of turret lathe
n = 3800 // annual production in engine lathe
nhp1 = 4 // hp motor
L = 2256*nhp1 // annual labour cost of turret lathe
w = 5 // wage in per hour
time = 2300 // hours
l = time*nel*w // labour cost of engine lathe
nhp2 = 2.5 // hp motor
pr = 0.35 // power rate in kwh
p = (nel*nhp2*746*time*pr)/1000 // power cost
P = (nhp1*746*time*pr)/1000 // power cost
F = 480 //saving
I  = 6/100 // interest rate
T = 4/100 // tax rate
D = 10/100 // allowance for depreciation in engine lathe
M = 6/100 // allowance for maintenance in engine lathe
B = 55/100 // labour burden in engine lathe
i  = 6/100 // interest rate
t = 4/100 // tax rate
d = 10/100 // allowance for depreciation in turret lathe
m = 6/100 // allowance for maintenance in turret lathe
X = (L + B*L + P +C*(I+T+D+M) - F)/N
x = (l+l*B + p + c*(i+t+d+m))/n
printf("\n Unit production cost on turret lathe = Rs %0.2f per piece\n Unit production cost on engine lathe = Rs %0.2f per piece" , X , x)
disp("Turret lathe will be more economical than two engine lathe")
// Answers vary due to round off error
