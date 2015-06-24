clear all; clc;

disp("Using figure 6.7 the specific speed Ns=N(V1^0.5)/(H_ad^0.75) should be calculated based on the inlet volumetric  flow rate V1 and the adiabetic head per stage H_ad")
p1=14.7
R=53.3
T1=530
rho1=p1*144/(R*T1)//144 is conversion factor.the actual formula is rho1=p1/(R*T1)
printf(" From rho1=p1/(R*T1) =%0.3f lbm/ft^3, we have V1",rho1)

V1=100/0.075
printf("\n Thus V1= %0.0f ft^3/s.",V1)

disp("Also from equation (A.3), we have total adiabetic head ΣH_ad=Cp*T1*[(pe/pi)^((k-1)/k)-1]")
Cp=0.24
T1=530
pe=50
pi=14.7
//Let y= (k-1)/k
y=0.2857
H_ad=Cp*T1*778*[{(pe/pi)^(y)}-1]//778 is conversion factor
printf(" Thus ΣH_ad= %0.0f lbf-ft/lbm \n",H_ad)

disp("The specific speeds for different number of stages are calculated as follows ")

Ns=4800*(1333^0.5)/(41436^0.75)
printf(" For n=1 , Ns=4800*(1333^0.5)/(41436^0.75)=%0.0f ",Ns)

Ns=4800*(1333^0.5)/(13812^0.75)
printf("\n For n=3 , Ns=4800*(1333^0.5)/(13812^0.75)=%0.2f ",Ns)

Ns=4800*(1333^0.5)/(10359^0.75)
printf("\n For n=4 , Ns=4800*(1333^0.5)/(10359^0.75)=%0.0f ",Ns)

Ns=4800*(1333^0.5)/(6906^0.75)
printf("\n For n=6 , Ns=4800*(1333^0.5)/(6906^0.75)=%0.0f ",Ns)

Ns=4800*(1333^0.5)/(5179^0.75)
printf("\n For n=8 , Ns=4800*(1333^0.5)/(5179^0.75)=%0.0f ",Ns)

disp("Reading the curves in figure 6.7,the best efficient point is around Ns=280 with Eta=0.90")
disp("ds=D*(H_ad^0.25)/(V1^0.5)=0.7")
disp("Hence 8 stage mixed flow impellers are selected.")

D=0.7*(1333^0.5)/((41436/8)^0.25)
printf(" The impeller diameter is calculated to be = %0.1f ft",D)

m=100
H_ad=41436
Eta=0.9
Ps=m*H_ad/(Eta*550)//converting units
printf("\n The total required shaft power Ps=m*H_ad/(Eta)=%0.0f hp",Ps)














