clear
//
v=120
r=40
i=v/(r)
//applying kvl to the closed loop
v=3*520
printf("\n voltage= %0.1f  v",v)
//when v=120,R can be found by I*(r+20)=120-->r=20
r=20
printf("\n r=20 ohm")
//when r=20 total r=20+20+20=60
r=60
l=10
tc=l/(r) //time constant
printf("\n tc= %0.1f  sec",tc)
//i=I0*e^-(t/tc)=3*e^(-6t)
energy=(10*9)/(2)
benergy=0.05*energy
printf("\n balance energy= %0.1f  J",benergy)
//(L*i^2)/2=2.25-->hence i=0.6708
//3*e^-6t=0.6708-->e^-6t=0.2236-->applying log on both sides we get t=0.25
printf("\n t=0.25 sec")
