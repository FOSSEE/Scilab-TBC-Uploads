//Chapter-3,Example 7,Page 58
clc;
close;

M = 214  // molecular mass of RaB

lamda= 4.31*10^-4

//for 1 rd activity  (dN/dt) = 10^6 dis/sec
// -(dN/dt)= lamda*N
//N = m * 6.023*10^23/ M

m=(10^6)*214/(lamda*6.023*10^23)

printf('the mass of RaB is ')

disp(m)

printf('    gram')
