clc
//initialization of variables
clear
P=3 //tonne/m
s=6 //m
l=50 //cm
b=20 //cm
k=0.5 //m
//calculations
R=P*s/2
sf=R-k*P
bm=R*k-P*k^2/2
tau_xy=1.5*sf*1000/(l*b)
tau_max=tau_xy
str=bm*s*10^5/(b*l*l)

// consider the line a-a

sigma_x=str*12.5/25
sigma_y=0
tau_xy=tau_xy*(1-(12.5/25)^2)

sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)

printf('For the line a-a the bending stress and shearing stress are \n respectively %.2f kg/cm^2, %.2f kg/cm^2 ',sigma_x,tau_xy)
printf('\n The principal stresses are %.2f kg/cm^2 (tension) %.2f kg/cm^2 (compression) ',sigma_1,sigma_2)

//consider the line c-c
printf('\n For the line c-c the bending stress and shearing stress are \n respectively %.2f kg/cm^2, %.2f kg/cm^2 ',sigma_x,tau_xy)
printf('\n The principal stresses are %.2f kg/cm^2 (compression) %.2f kg/cm^2 (tension) ',sigma_2,sigma_1)

//for the line b-b
tau_xy=tau_max
sigma_x=0
sigma_y=0
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
// results
printf('\n For the line b-b the bending stress and shearing stress are \n respectively %.2f kg/cm^2, %.2f kg/cm^2 ',sigma_x,tau_xy)
printf('\n The principal stresses are %.2f kg/cm^2 (tension) %.2f kg/cm^2 (compression) ',sigma_1,sigma_2)
