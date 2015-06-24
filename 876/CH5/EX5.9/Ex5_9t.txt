//caption:Find the value of multiplier resistance for the range(a)0-10V(b)0-50V(c)0-100V(d)0-200V using sensitivity method
//Ex5.9
clc
clear
close
V1=10//maximum voltage range(in V)
V2=50//maximum voltage range(in V)
V3=100//maximum voltage range(in V)
V4=200//maximum voltage range(in V)
I=0.002//deflection current(in A)
R=100//internal resistance(in ohm)
S=1/I
R1=(S*V1)-R
disp(R1,'(a)multiplier resistance(in ohm)=')
R2=(S*V2)-(R1+R)
disp(R2,'(b)multiplier resistance(in ohm)=')
R3=(S*V3)-(R2+R1+R)
disp(R3,'(c)multiplier resistance(in ohm)=')
R4=(S*V4)-(R1+R2+R3+R)
disp(R4,'(d)multiplier resistance(in ohm)=')