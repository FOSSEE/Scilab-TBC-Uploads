clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 5.7.2\n')
//given data
W1=220*2*%pi/60//vibrating frequency at 220 RPM (in rad/sec)
W2=W1//frequency to which the spring mass system is tuned to.
M2=1//mass in spring mass system in kgs
N1=188//first resonant freq of spring mass system in cpm
N2=258//second resonant freq of spring mass system in cpm
//u=ratio of absorber mass to main mass i.e M2/M1
//calculations
K2=M2*W2^2
Wn1=N1*2*%pi/60//first resonant freq of spring mass system in rad/sec
Wn2=N2*2*%pi/60//second resonant freq of spring mass system in rad/sec
//case 1
W=Wn1
x1=(W/W2)
u1=[x1^2-1]^2/x1^2//from Eqn 5.7.9,Sec 5.7.1.
//case 2
W=Wn2
x2=(W/W2)
u2=[x2^2-1]^2/x2^2//from Eqn 5.7.9,Sec 5.7.1.
//therefore
u=(u1+u2)/2//which is equal to M2/M1
M1=M2/u// mass of main system in kgs
K1=K2/u//stiffness of main system in N/m
//now
Wn21=150*2*%pi/60//new first resonant frequency in rad/sec
Wn22=310*2*%pi/60//new second resonant frequency in rad/sec
W=Wn21
x1=(W/W2)
u1=[x1^2-1]^2/x1^2//from Eqn 5.7.9,Sec 5.7.1.
//case 2
W=Wn22
x2=(W/W2)
u2=[x2^2-1]^2/x2^2//from Eqn 5.7.9,Sec 5.7.1.
//choosing the higher value
if u1>u2 then
    u=u1
else
    u=u2
end
M3=M1*u// mass of main system in kgs
K3=K1*u//stiffness of main system in N/m
//output
mprintf(' The mass of main system required is %4.4f kgs\n stiffness of main system reqired is %5.5f N/m\n If the resonant frequencies lie outside the range of 150 to 310 rpm then\n mass of main system is %4.4f kgs\n stiffness of main system is %5.5f N/m',M1,K1,M3,K3)
