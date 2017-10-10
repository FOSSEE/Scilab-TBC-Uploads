//Chapter-3,Example 6,Page 58
clc;
close;

M = 214  // molecular mass of RaB

lamda= 4.31*10^-4

//since -(dN/dt)= lamda*N =3.7 *10^10
//N = m * 6.023*10^23/ M

m=(3.7*10^10)*214/(lamda*6.023*10^23)

printf('the mass of RaB is ')

disp(m)

printf('    gram')
