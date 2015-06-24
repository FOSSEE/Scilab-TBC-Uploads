clc
// initialization of variables
clear
sigma_x=1000 //kg/cm^2
sigma_y=-500 //kg/cm^2
sigma_z=0  //kg/cm^2
tau_xy=500 //kg/cm^2
E=2*10^6 // kg/cm^2
nu=0.25
//calculations
ep_x=1/E*(sigma_x-nu*(sigma_y+sigma_z))
ep_y=1/E*(sigma_y-nu*(sigma_x+sigma_z))
ep_z=1/E*(sigma_z-nu*(sigma_y+sigma_x))
J1=ep_x+ep_y+ep_z
sigma_1=(sigma_x+sigma_y)/2+sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
sigma_2=(sigma_x+sigma_y)/2-sqrt((1/2*(sigma_x-sigma_y))^2+tau_xy^2)
th=1/2*atan(2*tau_xy/(sigma_x-sigma_y))
th=th*180/%pi
ep_1=1/E*(sigma_1-nu*sigma_2)
ep_2=1/E*(sigma_2-nu*sigma_1)
ep_3=-1/E*nu*(sigma_1+sigma_2)
//results
printf('The magnitude of principal strain are %.8f, %.8f, %.8f',abs(ep_1),abs(ep_2),abs(ep_3))
printf('\n and the diection is given by theta=%.2f degrees',th)
printf('\n J1 is %.6f',J1)
