//example-10.1
//page no-298
//given
//initial gauge length of the specimen
l0=50*10^-3   //m
//initia;l gauge diameter of the specimen
d0=12*10^-3  //m
//extended gauge length of fracture
lf=58*10^-3   //m
//reduced gauge diameter
df=7*10^-3  //m
//initial an final cross sectional areas are
A_i=3.14/4*d0^2   //m^2
A_f=3.14/4*df^2   //m^2
//various applied loads are in k N
P1=0
P2=5
P3=10
P4=15
P5=20
P6=25
P7=30
P8=32
P9=33
P10=32
P11=31
P12=35
P13=40
P16=130
//corresponding to these load we have recorded elongation as
delta1=0
delta2=0.011
delta3=0.022
delta4=0.035
delta5=0.048
delta6=0.059
delta7=0.073
delta8=0.088
delta9=0.100
delta10=0.125
delta11=0.150
delta12=0.230
delta13=0.400
delta16=8.000
//stress and strain corresponding to these loads and elongations are
sigma1=P1/A_i
strain1=delta1/l0
sigma2=P2/A_i
strain2=delta2/l0
sigma3=P3/A_i
strain3=delta3/l0
sigma4=P4/A_i
strain4=delta4/l0
sigma5=P5/A_i
strain5=delta5/l0
sigma6=P6/A_i
strain6=delta6/l0
sigma7=P7/A_i
strain7=delta7/l0
sigma8=P8/A_i
strain8=delta8/l0
sigma9=P9/A_i
strain9=delta9/l0
sigma10=P10/A_i
strain10=delta10/l0
sigma11=P11/A_i
strain11=delta11/l0
sigma12=P12/A_i
strain12=delta12/l0
sigma13=P13/A_i
strain13=delta13/l0
sigma16=P16/A_i
strain16=delta16/l0
//part(a)
//modulus of elasticity
E=(sigma4-sigma1)/(strain4-strain1)/10^3   //G Pa
//part(b)
//ultimate stress (maximum)
ultimate_sigma=P16/A_i*10^3/10^6   //M N/m^3
//part (c)
//upper yield point at C (shown in fig 10.3)
u_yield=P9/A_i*1000/10^6   //M N/m^2
//lower yield point at D (shown in fig 10.3)
l_yield=P11/A_i*1000/10^6   //M N/m^2
//part(d)
//percentage reduction in area
percent_A=(d0^2-df^2)/d0^2*100  //%
//part (e)
//percentage elongation
percent_l=(lf-l0)/l0*100  //%
//part(f)
//apparent breaking stress
app_breaking_stress=P16*1000/A_i/10^6   //M N/m^2
//actual breaking stress
actual_breaking_stress=P16*1000/A_f/10^6   //M N/m^2
printf ("the modulus of elasticity is %f G Pa \n the ultimate (maximum) stress is %f M n/m^2 \n,upper yield point is %f M N/m^2 \n lower yield point is %f M n/m^2\n percentage reduction in area is %f \n percentage elongation in length %f\n apparent breaking stress is %f M n/mm^2\n actual breaking point is %f M n/m^2",E,ultimate_sigma,u_yield,l_yield,percent_A,percent_l,app_breaking_stress,actual_breaking_stress)
