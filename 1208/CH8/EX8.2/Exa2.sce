//Exa2
clc;
clear;
close;
//given data :
//Work-in-process on Jan 1, 40% complete
WorkComplete=1800//units
ProcessDuringMonth=20000;//in Units
TransferedNextProcess=18000//in Units
//Work-in-process on Jan 31, 50% complete
WorkComplete31jan=1000//units

disp("Opening Inventory of work-in-process    Equivalent Units : "+string(WorkComplete*60/100));
disp("No. of units completed during the month :");
disp("Units Put into process "+string(ProcessDuringMonth));
disp("LESS: Units not completed "+string(WorkComplete31jan));
disp("Closing stock of work-in-process "+string(ProcessDuringMonth-WorkComplete31jan));
disp("50% completed during the month  = 500");
disp("Equivalent Production = 1080+19000+500 = 20580"); 