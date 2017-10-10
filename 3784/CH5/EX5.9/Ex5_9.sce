clc
//variable initialisation
Vph=2200 //Supply Voltage in volt
F=50 //supply frequency in Hz
Pout=2600 // Output Of Motor In KW
P=8 //Number Of Poles
N1=735 //Speed OF Motor In rpm
Rs=0.075 //Resistance of stator in ohm
Rr=0.1 //Resistance of rotor in ohm
Xs=0.45 //Reactance of Motor in ohm
Xr=0.55 //Reactance of Motor in ohm

//Solution
Ns=(120*F)/P
S=(Ns-N1)/Ns
Iph=Vph/sqrt((Rs+((Rr/S)^2))+((Xs+Xr)^2))
Il=sqrt(3)*Iph
Wms=(2*%pi*Ns)/60
Tl=(3*((Iph)^2))/(S*(Wms))
Ilm=Vph/(sqrt(3)*sqrt(((Rs+Rr)^2)+((Xs+Xr)^2)))
S2=1
Tst=(3*(((Ilm)^2)*0.1))/(S2*Wms)
r1=Tst/Tl//ratio of Tst and Tl
Tmax=(3/(2*Wms))*(((Vph/sqrt(3))^2)/((Rs+sqrt((Rs^2)+((Xs+Xr)^2)))))
r2=Tmax/Tl//ratio of Tmax and Tl
Rr2=0.15
Xr2=0.9
Il1=(sqrt(3)*Vph)/(sqrt(((Rs+Rr)^2)+((Xs+Xr2)^2)))
Iph1=Il1/(sqrt(3))
Tst1=(3*((Iph1)^2)*(Rr))/(Wms)
Rs1=Rs/3
Rr1=Rr/3
Xs1=Xs/3
Xr1=Xr/3
Inew=2*Il
X=sqrt(((Vph/(sqrt(3)*Inew))^2)-((Rs1+Rr1)^2))
Xe=X-Xs1-Xr1
printf('\n\n Ratio of starting torque and load torque=%0.1f \n\n',r1)//The answer provided in the textbook is wrong
printf('\n\n Ratio of maximum torque and load torque=%0.1f \n\n',r2)
printf('\n\n The Maximum line current during starting=%0.1f Amp\n\n',Il1)//The answer provided in the textbook is wrong
printf('\n\n The maximum torque at starting=%0.1f N-m\n\n',Tst1)//The answer provided in the textbook is wrong
printf('\n\n The required value of reactor=%0.1f ohm\n\n',Xe)
