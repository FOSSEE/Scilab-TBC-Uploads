clc
//initialisation of variables
M= 250 //KNm
Torquemax= 200 //KNm
allowablestress= 180 //N/mm^2
L=250 //mm
B= 500 //mm
t= 10 //mm
t1= 12 //mm 
//CALCULATIONS
Stressmax= (Torquemax*10^6)/(2*B*L*t)
I= (2*t1*L*L^2)+((2*t*B^3)/12)
sigma= (M*10^6*B)/(2*I)
Stressallowable= sqrt(sigma^2+3*(Stressmax^2))
if(Stressallowable<allowablestress)
    disp("Box grider section is satisfactory")
else
    disp("Box grider section is  not satisfactory")
end
