clc
clear 
//Input data 
H=80;//The Heat flows into the system in joules 
W=30;//The Work done by the system in joules 

//Calculations 
U=H-W;//The internal energy of the system in joules 
W1=10;//The work done along the path ADB in joules 
H1=W1+U;//The heat flows into the system along the path ADB in joules 
W2=-20;//The work done on the system from B to A in joules 
H2=W2-U;//The heat liberated from B to A in joules 
Ua=0;//Internal energy at A in joules 
Ud=40;//Internal energy at D in joules 
Wa=10;//Work done from A to D in joules 
Wd=0;//Work done from D to B in joules 
Uc=50;//Internal energy at C in joules 
Had=(Ud-Ua)+Wa;//Heat absorbed in the process AD in joules 
Hdb=Uc-Ud+Wd;//Heat absorbed in the process DB in joules 

//Output 
printf('(a)Heat flows into the system along the path ADB is H = %3.0f joules \n (b)The heat liberated by the system is H = %3.0f joules \n (c)The heat absorbed in the process AD is H = %3.0f joules   and  \n The heat absorbed in the process DB is H = %3.0f joules ',H1,H2,Had,Hdb)
