clc
clear
//Input data 
T2=273;//The lower temperature of the reservoir for a carnot refrigerator in K
T1=27+273;//The higher temperature of the reservoir for a carnot refrigerator in K 
H2=1000*80;//The amount of heat from the reservoir to the lower temperature in cal 
J=4.2;//The one calorie in joules 

//Calculations 
H1=(T1/T2)*H2;//The amount of heat discarded to the room in calories 
W=J*(H1-H2);//The work done by the refrigerator in joules 
C=H2/(H1-H2);//The coefficient of performance 

//output
printf('The amount of heat discarded to the room is H1 = %3.0f cal \n The work done by the refrigerator is W = %3.4g joules \n The coefficient of performance of the machine is %3.2f ',H1,W,C)
