clc,clear
printf('Example 5.22\n\n')

V=600
VA=60*10^3
I_sc=210
V_oc=480
I_f=10
R_a=0.2

I=VA/V        //VA=V*I and alternator is single phase
I_a=I

Z_s=V_oc/I_sc  //Synchronous Impedance
X_s=sqrt(Z_s^2-R_a^2) //SYnchronous Reactance
printf('Synchronous impedances is %f ohms and synchronous reactance is %f ohms\n',Z_s,X_s)

//PART (i)
phi1=acos(0.8) //and lagging
E1=sqrt((V*cos(phi1)+I_a*R_a)^2+(V*sin(phi1)+I_a*X_s)^2) //plus sign for lagging power factor
regulation1=100*(E1-V)/V
printf('\nRegulation at 0.8 lagging pf is %.2f percent ',regulation1 )

//PART (ii)
phi2=acos(1) 
E2=sqrt((V*cos(phi2)+I_a*R_a)^2+(V*sin(phi2)+I_a*X_s)^2) 
regulation2=100*(E2-V)/V
printf('\nRegulation at UNITY pf is %.2f percent ',regulation2 )

//PART (iii)
phi3=acos(0.6) //and leading 
E3=sqrt((V*cos(phi3)+I_a*R_a)^2+(V*sin(phi3)-I_a*X_s)^2) //minus sign for leading power factor
regulation3=100*(E3-V)/V
printf('\nRegulation at 0.6 leading pf is %.2f percent ',regulation3 )
