clc
// Given that
p1 = 8 // Pressure of entrance in bar
t1 = 1125 // Temperature of entrance in K
p2 = 1.5 // Pressure of exit in bar
n = 11 // No of stages
Vf = 110 // Axial velocity of flow in m/s
n_p = 0.85 // Polytropic efficiency 
Vb = 140 // Mean velocity in m/s
gama = 1.33 // Heat capacity ratio for gases
Cp = 1.15 // Heat capacity of gases in kJ/kgK
r = 0.5 // Fraction of reaction
printf("\n Example 21.3\n")
t2 = t1*((p2/p1)^((gama-1)*n_p/gama))
t2_s = t1*((p2/p1)^((gama-1)/gama))
n_s = (t1-t2)/(t1-t2_s)
Wt = Cp*(t1-t2)
Wt_s = Wt/n
V_w1 = (((Wt_s*1000)/Vb) + Vb)/2
alpha1 = atand(Vf/V_w1)
alpha2 = alpha1
beta1 = atand(Vf/(V_w1-Vb))
h_s = Wt_s
t_s = h_s/Cp
t1_ = t1-t_s
t1_s = t1*((t1_/t1)^(gama/((gama-1)*n_p)))^((gama-1)/gama)
n_st = (t1-t1_)/(t1-t1_s)
printf("\n The blade angle at the inlet = %f degree,and at the exit = %f degree,\n The overall efficiency of the turbine = %f percent\n The stage efficiency = %f percent",alpha1,beta1,n_s*100,n_st*100)
// The answers given in the book contain round off error.




