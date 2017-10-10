clear
//
//
//

//Variable declaration
delta_Hf=120*10**3      
T1=0    //temperature(K)
T2=300    //temperature(K)
n1=0
N=6.022*10**23
R=8.314
T3=900    //temperature(K)

//Calculation
n2=N*exp(-delta_Hf/(R*T2))     //number of vacancies at 300K(per mol)
n3=N*exp(-delta_Hf/(R*T3))     //number of vacancies at 900K(per mol)

//Result
printf("\n number of vacancies at 0K is %0.3f  per mol",n1)
printf("\n number of vacancies at 300K is %0.0f  per mol",n2)
printf("\n number of vacancies at 900K is %0.2f  *10**16 per mol",n3/10**16)
