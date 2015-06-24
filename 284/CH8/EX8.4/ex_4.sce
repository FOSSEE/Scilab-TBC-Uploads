// Chapter 8_Metal Semiconductor and Semiconductor heterojunctions
//Caption_Current voltage relationship
//Ex_4/page 318
phi_bn=0.67    //barrier height
Jst=6*10^-5    //reverse saturation current density
T=300
e=1.6*10^-19
A=Jst/(T^2)*exp(phi_bn/0.0259)
printf('The effective Richardson constant is %1.0f A/K^2-cm^2',A)
