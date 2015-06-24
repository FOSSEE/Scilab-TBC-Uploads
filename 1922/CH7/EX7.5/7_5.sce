clc
clear
//Initialization of variables
Pt=0.1013
ya=0.605
P1=0.1373
P2=0.06
xa=0.4
//calculations
if ya*Pt == xa*Pt & (1-ya)*Pt == (1-xa)*Pt then
    printf("The system is ideal")
else
    printf("The system is not ideal")
end
