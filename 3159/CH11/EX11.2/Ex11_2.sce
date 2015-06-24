// Calculate the stress required to move the dislocation at given temperature
clc
b = 2 // burger vector in angstrom
v = 20*b^3 // activation volume 
tau_pn = 1000 // P-N stress of crystal in MNm^-2
k = 1.38e-23 // physical constant
t1 = 0 // temperature in K
t2 = 100// temperature in K 
t3 = 300// temperature in K
t4 = 500// temperature in K
printf("\n Example 11.2")
printf("\n\n Part A:")
T = t1
tau_app = tau_pn - 40*k*T/(v*1e-30)
printf("\n The stress required to move the dislocation at temperature %dK is %d MNm^-2",T,tau_app)
printf("\n\n Part B:")
T = t2
tau_app = tau_pn - 40*k*T/(v*1e-30*1e6)
printf("\n The stress required to move the dislocation at temperature %dK is %d MNm^-2",T,tau_app)
printf("\n\n Part C:")
T = t3
tau_app = tau_pn - 40*k*T/(v*1e-30*1e6)
if tau_app<0 then
    printf("\n Stress to be applied is zero")
    printf("\n The stress required to move the dislocation at temperature %dK entirely overcome by thermal fluctuations", T)
end
printf("\n\n Part D:")
T = t4
tau_app = tau_pn - 40*k*T/(v*1e-30*1e6)
if tau_app<0 then
    printf("\n Stress to be applied is zero")
    printf("\n The stress required to move the dislocation at temperature %dK entirely overcome by thermal fluctuations", T)
end

