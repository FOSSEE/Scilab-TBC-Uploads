//Transport Processes and Seperation Process Principles
//Chapter 13
//Example 13.2-1
//Membrane Seperation Processes
//given data
//i) is to find the eqation
disp('the original equation is Na= (c1-c2)/((1/kc1)+(1/pm)+(1/kc2))')
disp(' but 1/kc2=0(as it is given that kc2 is large or almost infinite) hence it is Na=(c1-c2)/((1/kc1)+(1/pm))')
//(b)
Dab=7e-11;//membrane diffusivity in m2/s
Kd=1.5;//distribution coefficint
L=3e-5;//membrane thickness in m
pm=(Dab*Kd)/L;
c1=3e-2;//concn of the dilute soln containing A
c2=0.5e-2;//concn on the other side
kc2=2.02e-5;//mass transfer coefficient
Na=(c1-c2)/((1/kc2)+(1/pm));//to interface concn C2i, Na=kc2*(C2i-c2) hence,
C2i=(Na/kc2)+c2;
//also Kd=c2is/C2i
c2is=Kd*C2i;
mprintf("flux= %f kg mol/s m2",Na);
mprintf("interface concentration: %f kg mol/m3",C2i)
mprintf("interface concentration: %f kg mol/m3",c2is)
