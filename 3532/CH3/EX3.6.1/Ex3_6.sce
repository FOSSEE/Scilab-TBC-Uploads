clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.6.1\n')
//given data
m=5 //mass in spring mass system )in kg)
k=980//stiffnes of spring in N/m
u=0.025//coefficient of friction
g=9.81//acceleration due to gravity
//calculations
F=u*m*g//frictional force in N
Wn=sqrt(k/m)// freq of free oscillations in rad/sec
fn=Wn/(2*%pi)// freq of free oscillations in Hz
Ai=0.05//initial amplitude in m
Ar=0.5*Ai//reduced amplitude in m
totAreduc=Ai-Ar//total reduction in amp in m
Areducpercycl=4*F/k //reduction in amplitude/cycle explained in section 3.6.2 in eqn 3.6.6
n=round(totAreduc/Areducpercycl) //number of cycles for 50% reduction in amplitude
Treduc=n*(2*%pi/Wn)//time taken to achieve 50%reduction
//output
mprintf(' a)The frequency of free oscillations is %4.4f rad/sec or %4.4f Hz\n b)number of cycles taken for 50 percent reduction in amplitude is %1.0f cycles\n c)time taken to achieve 50 percent reduction in amplitude is %4.4f sec',Wn,fn,n,Treduc)
