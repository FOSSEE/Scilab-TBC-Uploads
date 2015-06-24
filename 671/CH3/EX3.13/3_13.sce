Vc_0m=10
Vc_0p=Vc_0m
disp(Vc_0p)

//KVL
i1_0p=(10-Vc_0p)/20
i2_0p=Vc_0p/20

//KCL
iC_0p=i1_0p-i2_0p
disp(iC_0p)
iC_inf=0 //capacitor is open circuit
disp(iC_inf)
VC_inf=10*20/(20+20)
disp(VC_inf)