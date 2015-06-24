//clear//
//Caption:Program to find Lasing Threshold gain
//Example4.7
//page156
clear;
clc;
L = 500e-06; //Laser diode length in meters
R1 = 0.32//reflection coefficient value of one end;
R2 = 0.32//reflection coefficient value of another end;
alpha_bar =10/1e-02; //absorption coefficient;
alpha_end = (1/(2*L))*log(1/(R1*R2));//mirror loss in the lasing cavity
alpha_threshold = alpha_bar+alpha_end;//total loss
disp(alpha_threshold,"The Threshold Gain per metre")
alpha_threshold_cm = alpha_threshold/100
disp(alpha_threshold_cm ,"The Threshold Gain per centimetre");
//Result
//The Threshold Gain per metre 3278.8686  
//The Threshold Gain per centimetre 32.788686 
