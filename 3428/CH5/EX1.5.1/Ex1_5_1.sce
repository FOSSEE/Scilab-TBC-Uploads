//Section-1,Example-1,Page no.-AC.437
//To calculate the fraction of load carried by the fibres in two composites of glass fibres and epoxy matrix
clc;
E_f=72
E_m=3.6
Vm_20=1-0.2
Vf_20=0.2
Vm_60=1-0.6
Vf_60=0.6
E=E_f/E_m
V_20=Vm_20/Vf_20
P_20=(E/(E+V_20))//P_20=(P_f/P_c)=((E_f/E_m)/((E_f/E_m)+(V_m/V_f)))
disp (P_20,'Fraction of load for 20% fibres by volume')
V_60=Vm_60/Vf_60
P_60=(E/(E+V_60))//P_20=(P_f/P_c)=((E_f/E_m)/((E_f/E_m)+(V_m/V_f)))
disp (P_60,'Fraction of load for 60% fibres by volume')
