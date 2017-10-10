clear
//Given
R1=1200.0                         //ohm
R2=600                          //ohm
Vab=5                           //V
V=35

//Calculation
Rp=(R1*R2)/(R1+R2)
I=Vab/Rp
pd=V-Vab
R=pd/I

//Result
printf("\n value of unknown resistance is %0.3f  ohm", R)
