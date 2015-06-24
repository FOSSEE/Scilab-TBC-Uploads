clc;
//Example 20.8 page no 277
printf(" Example 20.8 page no 277\n\n");
//refer to example no 20.5 and 20.7
V=142//volume of room,m^3
q=12.1// flow rate of air,m^3/min
tou=V/q//time ,min
r=30//rate of generation of chemical,ng/min
k=r/V//ng/(m^3.min)
c_i=85//intial concentration in laboratory,ng/m^3
c_o=10//given concentration in room
c=20.7//final concentration in room
//by using  trial and error mthod we get 
function y=f(t)
  y=c_i*(exp(-t/tou))+ (c_o+k*tou)*(1-exp(-t/tou)) - c
endfunction
t=fsolve(30,f);
//by using trail and error method we get
t=29
printf("\n t=%f min ",t);
