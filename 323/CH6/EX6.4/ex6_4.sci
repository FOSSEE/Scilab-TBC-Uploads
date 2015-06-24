//Pg 6.7,Ex6.4
clc;
P=4 //Number of poles
V=200 //Supply voltage
Rf=80 //field resistance in ohms
Ra=0.1 //Armature resistance in ohms
Il=100 //Load current in amperes
//part(i)
If=V/Rf
printf("\n Il=%.1f A \n",Il)
Ia=Il+If
printf("\n Ia=%.1f A \n",Ia)
//part(ii)
A=P //For lap wound generator
cpp=Ia/4 
printf("\n Current per armature path=%.3f A \n",cpp)
//Current per armature path=total current divided by total number of conductors
///part(iii)
Eg=V+(Ia*Ra)+(0.1*2) //Where the last term in the addition is brush drop
printf("\n Eg=%.2f V \n",Eg)

