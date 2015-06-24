//chapter 38
//Example 3
clc


//given
L=10*(10^-3)// in henry
C=(10)^-6 //in farad
R=0.1 //in ohm
w=sqrt(1/(L*C))
disp(" Angular frequency in radians/sec=")
disp(w)
t=(2*L*log(2))/R
disp(" time in sec=")
disp(t)
