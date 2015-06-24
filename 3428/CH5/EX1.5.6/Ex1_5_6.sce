//Section-1,Example-6,Page no.-AC.443
//To find the percentage reduction in the density of the given composite.
clc;
V_m=0.3
V_f=1-V_m
E_m=3.5
V_m=0.3
E_f=70
E_c=((E_m*V_m)+(E_f*V_f))
d_f=2.5
d_m=1.2                   //disp E_c(modulus of glass-epoxy composite)
E_cbar=(2*E_c)              //E_cbar=((E_c*(1-V_f))+(E_f*V_f)
V_f1=(50.05/299.95)               // V_f1=V_c fiber
//since V_m=0.3 has to be maintained V_f=0.7
//V_f=V_glass+V_c fiber
V_glass=0.7-0.16686
d_c=((d_f*V_f)+(d_m*V_m))
//d_cbar=d_f*V_f(glass fibres)+d_fbar*V_fbar(C-fibers)+d_m*V_m(epoxy)
d_cbar=(2.5*0.533)+(1.8*0.16686)+(1.2*0.3)
P_r=((d_c - d_cbar)/d_c)*100
disp(P_r,'Percentage reduction in density')







