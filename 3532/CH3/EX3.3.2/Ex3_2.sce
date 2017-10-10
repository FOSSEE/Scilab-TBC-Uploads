clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 3.3.2\n')
//given data
m=10 //mass of solid in Kg
Kr=3000 //stiffness of  natural rubber in N/m
Kf=12000 //stiffness of felt in N/m
Cr=100 //damping coefficient of  natural rubber in N-sec/m
Cf=330 //damping coefficient of felt in N-sec/m
//calculations
Ke=1/((1/Kf)+(1/Kr)) //equivalent stiffness in N/m
Ce=1/((1/Cf)+(1/Cr)) //equivalent damping coefficient N-sec/m
Wn=sqrt(Ke/m) // undamped natural freq in rad/sec
fn=Wn/(2*%pi) // undamped natural freq in Hz
zeta=Ce/(2*sqrt(Ke*m)) //damping factor
Wd=sqrt(1-zeta^2)*Wn //damped natural freuency in rad/sec(eqn 3.3.16)
fd=Wd/(2*%pi) // damped natural frequency in Hz
//output
mprintf(' The undamped natural frequency is %4.4f rad/sec or %4.4f Hz\n The damped natural freuency is %4.4f rad/sec or %4.4f Hz',Wn,fn,Wd,fd)
