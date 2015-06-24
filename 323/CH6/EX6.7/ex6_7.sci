//Ex6.7
clc;
V=100
Il=200
Rs=0.03
Rf=60
Ra=0.04
Vsfw=Il*Rs
printf("\n Voltage drop in series field winding =%.0f V \n",Vsfw)
If=(V+(Il*Rs))/Rf
printf("\n If=%.2f A \n",If)
Ia=Il+If
printf("\n Ia=%.2f A \n",Ia)
Eg=V+(Il*Rs)+(Ia*Ra)
printf("\n Generated EMF=%.2f V \n",Eg)
