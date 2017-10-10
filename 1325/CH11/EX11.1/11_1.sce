//to find gear train suitable for connecting the spindle
clc
//given
Ns=26//rpm of spindle
N1=4//rpm of lead screw
//the only wheel in the set of which 13 is a factor is that with 65 teeth
T1=65
T2=25//to satisfy the Ns/n1 ratio and to select from given set
T3=75//to satisfy the Ns/n1 ratio and to select from given set
T4=T1*T3*N1/(Ns*T2)
//solution b
Ns1=35
N1=4
Tb1=105//to satisfy the Ns/n1 ratio and to select from given set
Tb2=30//to satisfy the Ns/n1 ratio and to select from given set
Tb3=100//to satisfy the Ns/n1 ratio and to select from given set
Tb4=Tb1*Tb3*N1/(Ns1*Tb2)
printf("\na) The change wheel used will have %.f, %.f, %.f and %.f teeths\nb) The change wheel used will have %.f, %.f, %.f and %.f teeths",T1,T2,T3,T4,Tb1,Tb2,Tb3,Tb4)
