clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 1.4.2\n')
//given data
//case 1
//x1=(1/2)*cos((%pi/2)*t)...x1=a*cos(W1*t)
//x2=sin(%pi*t)...x2=b*sin(W2*t)
//calculations
W1=(%pi/2)
W2=%pi
t1=2*%pi/(W1)
t2=2*%pi/(W2)
p1=[t1 t2]
T1=lcm(p1)
//case 2
//x1=2*cos((%pi*t)...x1=a*cos(W3*t)
//x2=2*cos(2*t)...x2=a*cos(W4*t)
W3=%pi
W4=2
t3=2*%pi/(W3)
t4=2*%pi/(W4)
p2=[t3 t4]
T2=lcm(p2)
//output
mprintf('Case(i)\nTime period of first wave is %f sec\nTime period of first wave is %f sec\nThe time period of combined wave is %f sec\nCase(ii)\nTime period of first wave is %f sec\nTime period of first wave is %f sec\nThe time period of combined wave is %f sec',t1,t2,T1,t3,t4,T2)
mprintf('\nNOTE: The time period of combined motion in case (ii) cannot be calculated\n since pi is a non-terminating and non recurring number.\n But SCILAB takes the value of pi to be 3.141593 and therefore\n calculates the LCM of pi and the time period of first wave in case (ii.')
