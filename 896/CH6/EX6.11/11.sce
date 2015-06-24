clc
//Example 6.11
//Calculate the pressure drop in the pipe due to fittings
dx=3000//ft actual length of pipe
dx1=281//ft equivalent length of fittings
p=484//psi
dx_total=dx+dx1//ft
dp_total=p*(dx_total/dx)//psi
dp_vnf=dp_total-p//psi pressure drop fue to valves and fittings
printf("The pressure drop due to valves and fittings is %f psi",dp_vnf);