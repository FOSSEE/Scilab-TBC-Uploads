// chapter 4 , Example 4.8 , pg 120
a=0.1 *10^-9  //width  (in m)
n1=1// lowest  energy state of particle is obtained at n=1
n=6  //6th excited state hance n=6
h=6.625*10^-34 //plancks constant(in Js)
m=9.11*10^-31//mass of electron (in Kg)
//E=(n^2*h^2)/(8*m*a^2)    n=excited state of electron 
E1=(n1^2*h^2)/(8*m*a^2)//energy of an electron in ground state (in J)
E6=(n^2*h^2)/(8*m*a^2)//energy at 6th excuted state(in J)
E=E6-E1//energy required to excite the electron from ground state  to the 6th excited state
printf("energy required to excite the electron from ground state  to the 6th excited state(in J)\n")
disp(E)
printf("E=%.2f eV",(E/(1.6025*10^-19)))
