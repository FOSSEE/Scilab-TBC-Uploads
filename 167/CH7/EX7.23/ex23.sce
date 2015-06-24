//ques23
//Reducing the Pressure Setting to Reduce Cost
clear
clc
Preduced=885.6;//reduced pressure
P1=85.6;//initial pressure in kPa
P2=985.6;//final pressure in kPa
n=1.4;
f=1-((Preduced/P1)^((n-1)/n)-1)/((P2/P1)^(1-1/n)-1);//The fraction of energy saved as a result of reducing the pressure setting
Cc=12000;//current cost in $/yr
Csaving=Cc*f;
printf('Cost saving = $%.0f/yr \n',Csaving);
 
