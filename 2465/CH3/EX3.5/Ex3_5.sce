//Chapter-3,Example 5,Page 57
clc;
close;

//Part (a)

t_half= 1620  //half life of radium

lamda= 0.693/t_half 

//as radium lose one centigram mass

N_0=100 // in centigram

N_1=N_0-1

t_1=log10(N_0/N_1)/(lamda*log10(%e))

printf('Part (a)---total number of years required are %.2f years ',t_1)

// Part (b)

N_2= 1

t_2=log10(N_0/N_2)/(lamda*log10(%e))

printf('\n Part (b)---total number of years required are %.2f years ',t_2)
