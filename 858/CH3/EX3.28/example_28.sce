clc
clear 
printf("example 3.28 page number 115\n\n")

//to find the top and bottom product,condenser duty,heat input to rebpoiler
hF = 171  //in kJ/kg
hD = 67   //in kJ/kg
hL = hD;

hW = 200  //in kJ/kg
H = 540  //in kJ/kg

disp('part 1')
F = 1000   //in kg/h
xF = 0.40
xW = 0.02;
xD = 0.97;
D = F*(xF-xW)/(xD-xW);
W = F-D;

printf("bottom product = %f kg/hr",W)
printf("\ntop product = %f kg/hr\n\n",D)

disp('part 2')
L = 3.5*D;
V = L+D;
Qc = V*H-L*hL-D*hD;
printf("condenser duty = %f KJ/hr\n\n",Qc)

disp('part 3')
Qr = Qc - 24200;
printf("rate of heat input to reboiler = %f kJ/hr",Qr)
