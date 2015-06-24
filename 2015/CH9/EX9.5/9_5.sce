clc
//initialisation of variables
c1=0.05 //percentage
c2=0.10 //percentage
c3=0.20 //percentage
rp=10
//CALCULATIONS
eff1=(1+c1-c1*(rp)^(0.78125))
eff2=(1+c2-c2*(rp)^(0.78125))
eff3=(1+c3-c3*(rp)^(0.78125))
//RESULTS
printf('volumetric effiency 1 is %2f',eff1)
printf('\nvolumetric effiency 2 is %2f',eff2)
printf('\nvolumetric effiency 3 is %2f',eff3)
