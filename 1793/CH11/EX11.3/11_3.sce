clc
e11=0.9
e21=0.8
T2=4
T1=2
Cc= (e11-e21)/log10(T2/T1) // from loading branch
e1=0.67
e2=0.655
Cs=(e1-e2)/log10(T2/T1)
k=Cs/Cc
T3=12
e3=e11-Cc*log10(T3/T1)
printf('Compression index Cc= %f\n',Cc)
printf(' Cs/Cc = %f\n',k)
printf(' e3 = %f',e3)
