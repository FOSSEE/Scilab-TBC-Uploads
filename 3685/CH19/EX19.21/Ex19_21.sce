clc
// Given that
m = 2.5 // Mass flow rate in kg/s
p1 = 1 // Inlet pressure in bar
T1 = 300 // Inlet temperature in bar
n_s = 0.88 // Stage efficiency
Wc = 600 // Power input in kW
delta_t = 21 // Temperature rise in first stage in degree centigrade
gama = 1.4 // Ratio of heat capacities 
cp = 1.005 // Heat capacity in kJ/kgK
printf("\n Example 19.21\n")
x = n_s*gama/(gama-1)// Where x = (n/(n-1))
T = Wc/(m*cp)+T1
p = p1*((T/T1)^(x))
T2 = T1 + n_s*delta_t
r = ((T2/T1)^(gama/(gama-1)))// Where r = p2/p1
N = log(p/p1)/log(r)
N_ = ceil(N)
Ts = T1*(p/p1)^((gama-1)/gama)
n_inter = (Ts-T1)/(T-T1)
printf("\n The delivery pressure = %f bar,\n The no of stages = %d,\n The internal efficiency = %f ",p,N_,n_inter)

 
