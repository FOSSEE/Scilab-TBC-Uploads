//ques1
//Net Power Production of a Heat Engine
clear
clc
Qh=80;//heat of source in MW
Ql=50;//heat of sink in MW
W=Qh-Ql;//Output power in MW
printf('The net power output of this heat engine is = %.0f MW \n',W);
n=W/Qh;//thermal efficiency =net work/heat of source
printf(' Thermal Efficiency = %.3f \n',n);