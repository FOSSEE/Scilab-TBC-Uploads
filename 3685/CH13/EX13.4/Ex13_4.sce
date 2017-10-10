clc
T1 = 50 // Temperature before compression stroke in degree Celsius
rk = 16 // Compression ratio
g = 1.4 // Heat capacity ratio
P3 = 70 // Maximum cycle pressure in bar
cv = 0.718 // Constant volume heat addition capacity
cp = 1.005 // Constant pressure heat addition capacity
R = 0.287 // Gas constant
T2 = (T1+273)*((rk^(g-1))) //Temperature after compression stroke 
P1 = 1 // Pressure before compression in bar
P2 = P1*(rk)^g // Pressure after compression
T3 = T2*(P3/P2) // Temperature after constant volume heat addition
Q23 = cv*(T3-T2) // Constant volume heat added
T4 = (Q23/cp)+T3 // Temperature after constant pressure heat addition
v43 = T4/T3 // cut off ratio 
v54 = rk/v43 // Expansion ratio
T5 = T4*(1/v54)^(g-1) // Temperature after expansion
P5 = P1*(T5/(T1+273)) // Pressure after expansion
Q1 = cv*(T3-T2)+cp*(T4-T3) // Total heat added
Q2 = cv*(T5-T1-273) // Heat rejected
n_cycle = 1-(Q2/Q1) // Cycle efficiency
v1 = (R*(T1+273))/(P1*1e2) // Volume before compression 
v2 = (1/16)*v1 // Swept volume
Wnet = Q1*n_cycle // Net work done
Pm = Wnet/(v1-v2) // Mean pressure
printf("\n Example 13.4\n")
printf("\n Efficiency of the cycle is %f percent",n_cycle*100)
printf("\n Mean effective pressure is %f bar",Pm/100)
//The answers vary due to round off error

