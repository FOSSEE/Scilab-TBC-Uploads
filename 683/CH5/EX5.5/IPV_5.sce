// sum 5-5
clc;
clear;
d=15;
Eg=480;
t=3;
//flange thickness=ft;
ft=12;
A=%pi*d^2/4;
l=d+t+(ft/2);
E=210;
kb=A*E/l;
//effective area of gasket=Ag;
Ag=%pi*(((ft+t+d)^2)-(d^2))/4;
kg=Ag*Eg/t;
// printing data in scilab o/p window
   printf("kb is %0.3f N/mm ",kb);
kb=kb*10^-3;
kg=kg*10^-3;
if (kb<=kg) then
    printf("\n The combines stiffness of bolt and gasket is %0.3f kN/mm",kg)
end

//The difference in the value of kb is due to rounding-off the value of A 
   
   