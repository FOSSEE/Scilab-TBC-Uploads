clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.6.2\n')
//given data
k=9800//stiffnes of spring in N/m
m=40 //mass in spring mass system )in kg)
g=9.81//acceleration due to gravity
F=49//frictional force in N
x=0.126//total extension of spring in m
xeq=m*g/k//extension of spring at equillibrium in m
xi=x-xeq//initial extension of spring from equillibrium in m
Alosspercycl=4*F/k//reduction in amplitude/cycle explained in section 3.6.2 in eqn 3.6.6
n=int(xi/Alosspercycl)//number of complete cycles  that system undergoes
Af=xi-n*Alosspercycl//amplitude at the end of n cycles
SF=k*Af//spring force acting on the upward direction for an extension of Af
if F<SF then 
    disp('The spring will move up since spring force is greater than frictional force')
    Xa=Af//assigning Af to a new variable Xa
     Xb=0//assume Xb=0 at first
    //solving the quadratic equation in Xb whose roots are Xb1 and Xb2
    Xb1=(F+sqrt((-F)^2-(4*(0.5*k)*((-(1/2)*k*Xa^2)+F*Xa))))/k
    Xb2=(F-sqrt((-F)^2-(4*(0.5*k)*((-(1/2)*k*Xa^2)+F*Xa))))/k
    if  int(Xb1-Xa)==0 then 
        Xb=Xb2 
      else
          Xb=Xb1 
      end
      finalext=xeq+Xb
      mprintf(' The final extention of spring is %f m',finalext)
    else disp('The spring will not move up since spring force is not greater than frictional force')
end
