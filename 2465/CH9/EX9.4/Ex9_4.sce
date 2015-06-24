//Chapter-9,Example 4,Page 220
clc();
close();

R= 550   //resistance of the cell

K=0.002768    //specific conductivity

C_constant= R*K

p= 72.18    //observed resistance

Kv = C_constant*(1/p)

C= 0.2     //concentration

lamda_v= Kv*1000/C  //equivalent conductivity

M= 0.1

lamda_m= 1000*Kv/M   //molar conductivity

printf('the equivalent conductivity of ZnSO4 is %.2f /ohm.cm^2',lamda_v)

printf('\n the molar conductivity of ZnSO4 is %.2f /ohm.cm^2',lamda_m)
