clc;
//page no 227
//prob no. 7.3.1
//An RF receiver tunes signal in 550-1600kHz with IF=455kHz
fs_min=550*10^3;fs_max=1600*10^3;IF=455*10^3;
//Determination of freq tuning ranges
fo_min=fs_min+IF;
fo_max=fs_max+IF;
disp('Hz',fo_max,'fo_max=','Hz',fo_min,'fo_min=','The freq tuning range is');
Rf=(fo_max)/(fo_min);//calculation of freq tuning range ratio
disp(Rf,'Rf=','The tuning range ratio of oscillator is');
Rc=Rf^2;//calculation of capacitance tuning range ratio
disp(Rc,'Rc=','The capacitor tuning range ratio of oscillator is');
//For RF section
Rf1=fs_max/fs_min;
disp(Rf1,'Rf=','The tuning range ratio of RF-ckt is');
Rc1=Rf1^2; 
disp(Rc1,'Rc','The capacitor tuning range ratio of RF-ckt is');