clc
//initialization of variables
clear
E=2*10^6 //kg/cm^2
sigma_y=2600 //kg/cm^2
I=2502 //cm^4
L=500 //cm
A=59.7 //cm^2
L_tcr=L/sqrt(I/A)

printf('The actual critical length ratio is %.1f',L_tcr)
//case (b)
L_cr=sqrt(E*%pi^2/sigma_y)
printf('\n case (b)')
printf('\n The critical length ratio is %.1f',L_cr)

//case (a)
L_cr=sqrt(E*%pi^2/(4*sigma_y))
printf('\n case (a)')
printf('\n The critical length ratio is %.1f',L_cr)

//case (c)
L_cr=sqrt(4*E*%pi^2/sigma_y)
printf('\n case (c)')
printf('\n The critical length ratio is %.1f',L_cr)

// case (d)
L_cr=sqrt(2.05*E*%pi^2/sigma_y)
// Results
printf('\n case (d)')
printf('\n The critical length ratio is %.1f',L_cr)
printf('\n Only in case (a) actual ratio is more than critical ratio and material \n remains elastic  For cases (b), (c) and (d) critical length ratio is \n much higher and hence the material yelds before crippling loads are reached')


