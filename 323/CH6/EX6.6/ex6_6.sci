//Ex6.6,Pg6.8
clc;
V=230 //Supply voltage
Il=40 //Current in amperes
Ra=0.5 //Armature winding
Rf=115 //Resistance in ohms
//Generator operation
disp("Generator operation")
Il=40 //Load current in amperes
If=V/Rf
printf("\n If=%.0f A \n",If)
Ia=Il+If
printf("\n Ia=%.0f A \n",Ia)
Eg=V+(Ia*Ra)
printf("\n Eg=%.0f V \n",Eg)
//Motor operation
disp("Motor operation")
Il=40
If=2
Ia=Il-If
printf("\n Ia=%.0f A \n",Ia)
Eb=V-(Ia*Ra)
printf("\n Eb=%.0f V \n",Eb)
n=Eb/Eg
printf("\n N2/N1=% .4f \n",n)
