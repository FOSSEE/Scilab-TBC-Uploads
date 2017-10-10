//Chapter-9,Example 1,Page 219
clc();
close();

a= 1.25   //cross section area in cmsquare

l= 10.5    //distance of seperation

r=1996    //resistance

O_cond= 1/r   //observed conductivity

C_constant = l/a   //cell constant

S_cond=C_constant*O_cond    //specific conductivity

printf('the cell constant is %.2f /cm',C_constant)

printf('\n the specific conductivity is %.5f /ohm.cm ',S_cond)
