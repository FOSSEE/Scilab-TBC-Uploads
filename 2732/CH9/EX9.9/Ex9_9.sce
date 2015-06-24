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
tau_xy=1.5*sf*1000/(l*b)  //max shear stress
tau_max=tau_xy  
str=bm*s*10^5/(b*l*l)  //max bending stress

// consider the line a-a

sigma_x=str*12.5/25
sigma_y=0
tau_xy=tau_xy*(1-(12.5/25)^2)

sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)

theta=1/2*atan(2*tau_xy/(sigma_x-sigma_y))
sigma_p=sigma_1/cos(theta)
P=sigma_p*2*l*b/(3*1000)
printf('A prestressing force of %.2f Tonne must be applied to balance the tension at a-a',P)

//At bottom point D or C
pre_str=P*2*1000/(l*b)
net=str-pre_str
printf('\n At bottom point D or C')
printf('\n Net tension = %.2f kg/cm^2 ',net)

//consider the line b-b
pre_str=P
sigma_x=pre_str
sigma_y=0
tau_xy=tau_max
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
printf('\n At section b-b')
printf('\n pre-stress=%.2f kg/cm^2',pre_str)
printf('\n principal stresses are %.2f, %.2f kg/cm^2 ',sigma_1,sigma_2)

//for the line c-c
sigma_x=str*12.5/25
sigma_y=0
tau_xy=tau_xy*(1-(12.5/25)^2)
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
pre_str=pre_str/2
net=sigma_1+pre_str
sigma_x=net
sigma_y=0
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
// results
printf('\n At section c-c')
printf('\n the direct stress is %.2f kg/cm^2',net)
printf('\n pre-stress = %.2f kg/cm^2',pre_str)
printf('\n principal stresses are %.2f, %.2f kg/cm^2 ',sigma_1,sigma_2)

// wrong calculations in the thext for some parts

