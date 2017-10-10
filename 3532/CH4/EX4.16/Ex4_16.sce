clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 4.11.2\n')
//given data
fn=5.75//natural frequency in Hz
zeta=0.65
ZbyY=1.01
//case 1
//substituting for (Z/Y)=1.01 and (W/Wn)=r^2 in Eqn 4.4.11 we get the quadratic eqn as follows
//0.02*r^4-0.31*r^2+1=0
//solving for r in above eqn whose rootes are r1 and r2
r1=sqrt(((0.31)+sqrt(((-0.31)^2)-4*0.02*1))/(2*0.02))
r2=sqrt(((0.31)-sqrt(((-0.31)^2)-4*0.02*1))/(2*0.02))
if r1>r2 then
    r=r1
    else r=r2
end
bet=r//bet=(W/Wn)
f1=bet*fn
//case 2
ZbyY=0.98
//substituting for (Z/Y)=0.98 and (W/Wn)=r^2 in Eqn 4.4.11 we get the quadratic eqn as follows
//0.04*r^4+0.31*r^2-1=0
//solving for r in above eqn whose rootes are r3 and r4
r3=sqrt((-0.31+sqrt(((0.31)^2)-4*0.04*-1))/(2*0.04))
r4=sqrt((-0.31-sqrt(((0.31)^2)-4*0.04*-1))/(2*0.04))
t1=real(r3)
t2=real(r4)
if t1>t2 then
    r=r3
    else r=r4
end
bet=r//bet=(W/Wn)
f2=bet*fn
mprintf('The lowest frequency beyond which the amplitude can be measured within\n  (i)one percent error is %4.4f Hz\n (ii)two percent error is %4.4f Hz',f1,f2)
