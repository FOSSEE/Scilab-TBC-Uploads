//example-10.2
//page no-303
//given
//initial length of the specimen
h0=24.02*10^-3   //m
//initial gauge diameter of the specimen
d0=18.74*10^-3  //m
//final length of specimen
hf=18.70*10^-3   //m
//final diameter
df=21.54*10^-3  //m
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
P8=35
P9=40
P10=45
P11=50
P12=55
P13=60
P14=65
P15=70
P16=75
P17=80
P18=85
P19=131
//corresponding to these load we have recorded contraction as
delta1=0
delta2=0.004
delta3=0.008
delta4=0.012
delta5=0.015
delta6=0.017
delta7=0.020
delta8=0.023
delta9=0.025
delta10=0.028
delta11=0.032
delta12=0.036
delta13=0.040
delta14=0.044
delta15=0.049
delta16=0.054
delta17=0.061
delta18=0.069
//stress and strain corresponding to these loads and elongations are
sigma1=P1/A_i
strain1=delta1/h0
sigma2=P2/A_i
strain2=delta2/h0
sigma3=P3/A_i
strain3=delta3/h0
sigma4=P4/A_i
strain4=delta4/h0
sigma5=P5/A_i
strain5=delta5/h0
sigma6=P6/A_i
strain6=delta6/h0
sigma7=P7/A_i
strain7=delta7/h0
sigma8=P8/A_i
strain8=delta8/h0
sigma9=P9/A_i
strain9=delta9/h0
sigma10=P10/A_i
strain10=delta10/h0
sigma11=P11/A_i
strain11=delta11/h0
sigma12=P12/A_i
strain12=delta12/h0
sigma13=P13/A_i
strain13=delta13/h0
sigma14=P14/A_i
strain14=delta14/h0
sigma15=P15/A_i
strain15=delta15/h0
sigma16=P16/A_i
strain16=delta16/h0
sigma17=P17/A_i
strain17=delta17/h0
sigma18=P18/A_i
strain18=delta18/h0
//part(a)
//modulus of elasticity
E=(sigma13-sigma1)/(strain13-strain1)/10^3   //G Pa
//part(b)
// yield stress at D (shown in fig 10.6)
yield=P15/A_i*1000/10^6   //M N/m^2
//part (c)
//ultimate stress (maximum)
ultimate_sigma=P19/A_i*10^3/10^6   //M N/m^3
//part (d)
//percentage contraction
percent_l=(h0-hf)/h0*100  //%
//part(e)
//percentage increase in area
percent_A=(df^2-d0^2)/d0^2*100  //%
//part(f)
//apparent breaking stress
app_breaking_stress=P19*1000/A_i/10^6   //M N/m^2
//actual breaking stress
actual_breaking_stress=P19*1000/A_f/10^6   //M N/m^2
printf ("the modulus of elasticity is %f G Pa \n , yield stress is %f M n/m^2\nthe ultimate (maximum) stress is %f M n/m^2 \n  percentage contraction in length %f\n percentage increase in area is %f \n apparent breaking stress is %f M n/mm^2\n actual breaking point is %f M n/m^2",E,yield,ultimate_sigma,percent_l,percent_A,app_breaking_stress,actual_breaking_stress)
