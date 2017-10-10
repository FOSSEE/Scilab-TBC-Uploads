clc
//variable initialization
Pout=30 //output of induction motor in kilowatt
Vm=400 //input of motor in volt
F0=50 //supply frequency in hrtz
F1=40 // frequency in hrtz
P=4 //number of poles 
Rs=0.33 //resistance of stator in ohm
Rr=0.22 //resistance of rotor in ohm
Xs=0.9 //reactance of stator in ohm
Xr=0.9 //reactance of rotor in ohm

//Solution
Vs=Vm/sqrt(3)
Sm=Rr/(sqrt((Rs^2)+((Xs+Xr)^2)))
Ir=Vs/sqrt(((Rs+(Rr/Sm))^2)+((Xs+Xr)^2))
cos_P=cosd(atand((Xs+Xr)/(Rs+(Rr/Sm))))
Pi=sqrt(3)*Vm*Ir*cos_P
P0=3*(Ir^2)*Rr*((1/Sm)-1)
n=(P0/Pi)*100

K=F1/F0//for frequency of 40 Hz
Xs2=K*Xs
Xr2=K*Xr
Sm2=Rr/(sqrt((Rs^2)+((Xs2+Xr2)^2)))
Vs2=K*Vs
Ir2=Vs2/sqrt(((Rs+(Rr/Sm2))^2)+((Xs2+Xr2)^2))
cos_p2=cosd(atand((Xs2+Xr2)/(Rs+(Rr/Sm2))))
Pi2=3*Vs2*Ir2*cos_p2
P02=3*(Ir2^2)*Rr*((1/Sm2)-1)
n2=(P02/Pi2)*100
printf('\n\n The Efficiency at breakdown torque with 50Hz=%0.1f\n\n',n)
printf('\n\n The Efficiency at breakdown torque with 40Hz=%0.1f\n\n',n2)
//The answers vary due to round off error
