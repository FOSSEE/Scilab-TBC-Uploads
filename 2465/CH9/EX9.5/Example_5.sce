//Chapter-9,Example 5,Page 220
clc();
close();

R= 32    //resistance of solution

l= 1.8    //distance between electrodes

a= 5.4   //area 

Kv=l/(R*a)    //specific conductivity

C= 0.1     //concentration

lamda_v= Kv*1000/C  //equivalent conductivity

printf('the equivalent conductivity is %.3f /ohm.cm^2',lamda_v)
