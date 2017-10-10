clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.2.2\n')
//given data
Wd=9.8*2*%pi// damped natural freqency in rad/sec
Wp=9.6*2*%pi//freqency from forced vibration test in rad/sec
//calculations
//(Wp/Wn)=sqrt(1-2*zeta^2)...(1) from Eqn 4.2.18 from Sec 4.2.1
//(Wd/Wn)=sqrt(1-zeta^2)...(2) from Eqn 4.2.19 from Sec 4.2.1
//dividing (1) by (2)
x=(Wp/Wd)
//x=[sqrt(1-2*zeta^2)]/[sqrt(1-zeta^2)]
zeta=sqrt((1-x)/(2-x))//damping factor obtained on simplifying the above eqn
//substituting for zeta in eqn 2 above
Wn=Wd/sqrt(1-zeta^2)//natural frequency of system in rad/sec
fn=Wn/(2*%pi)//natural frequency of system in Hz
//output
mprintf('The damping factor for the system is %f and\n the natural frequency is %4.4f rad/sec or %4.2f Hz',zeta,Wn,fn)
mprintf('\nNOTE:The damping factor zeta given in textbook is 0.196,which is wrong.')
