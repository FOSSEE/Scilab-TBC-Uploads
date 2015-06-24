b = 8/(0.114+0.029); // By carbon balance
C = 18/2; // By hydrogen balance
a = b*0.114 + (b/2)*0.029 + b*0.016 + C/2 ; // By oxygen balance
Wcv = 1; // Power developed by engine in kW 
n_fuel = (0.57*1)/(3600*114.22);
Qcv = Wcv-n_fuel*3845872; // 5.33 
disp("kW",Qcv,"The rate of heat transfer from the engine is")
// Part (b)
ach = 5407843; // chemical energy of liquid octane
n2 = Wcv/(n_fuel*ach);
disp("%",n2*100,"The second law efficiency is")
