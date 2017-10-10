//Chapter-9,Example 2,Page 219
clc();
close();

R= 500   //resistance of the cell

K= 0.0002765   //specific conductivity

//cell constant= l/a  and R= p(l/a)
//sice l= length  a= area  p= resistivity 
//(1/p) = K = specific conductivity
//(l/a) = R*K

C_constant= R*K   //cell constant

printf('the cell constant is %.3f /cm',C_constant)
