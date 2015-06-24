//ques4
//Heating a House by a Heat Pump
clear
clc
//(a)
Qh=80000;//heat of reservoir in kJ/h
COPh=2.5;//coefficient of performance of heat engine
W=Qh/COPh;//work done by heat pump in kJ/h
printf(' (a) The power consumed by this heat pump = %.0f kJ/h \n',W);
//(b)
Ql=Qh-W;//heat of sink/outdoor in kJ/hour
printf('  (b) The rate of heat transfer from the outdoor = %.0f kJ/h \n',Ql);