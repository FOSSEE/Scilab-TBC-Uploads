//water chemistry//
//example 7.4//
N=0.08;//normality of MgSO4//
V1=12.5;//volume of MgSO4 in ml//
V2=100;//volume of water sample//
M=N/2;//molarity of MgSO4//
N1=(M*12.5)/1000;//no of moles of MgSO4 in 100 ml water//
N2=(N1*1000)/100;//no of moles of MgSO4 in one litre water//
W=100;//molecular weight of CaCO3
W1=N2*W*1000;//MgSO4 in terms of CaCO3 in mg/lit//
printf("\nThe hardness due to MgSO4 is %fmg/l CaCO3 or ppm of CaCO3",W1);
