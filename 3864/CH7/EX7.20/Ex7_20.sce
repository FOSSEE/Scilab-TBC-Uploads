clear
//
//

//Initilization of Variables

d1=100 //mm //External Diameter
d2=50  //mm //Internal Diameter
N=500  //mm //r.p.m
P=60*10**6 //N-mm/sec //Power
p=100 //N/mm**2 //principal stress

//Calculations

//M.I
I=%pi*(d1**4-d2**4)*64**-1 //mm**4

//Bending Stress
//f=M*I*d1*2**-1 //N/mm**2

//Principal Planes
//p_x=32*M*(%pi*(d1**4-d2**4))*d1
//p_y=0

//Shear stress
//q=T*J**-1*(d1*2**-1)
//After sub values and further simplifying we get
//q=16*T*d1*(%pi*(d1**4-d2**4))*d1

//Principal stresses
//P1=(p_x+p_y)*2**-1+(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
//After sub values and further simplifying we get
//P1=16*(%pi*(d1**4-d2**4))*d1*(M+(M**2+t**2)**0.5)  ...............(1)

//P=2*%pi*N*T*60**-1
//After sub values and further simplifying we get
T=P*60*(2*%pi*N)**-1*10**-6 //N-mm

//Again Sub values and further simplifying Equation 1 we get
M=(337.533)*(36.84)**-1 //KN-m

//Min Principal stress
//P2=(p_x+p_y)*2**-1-(((p_x-p_y)*2**-1)**2+q**2)**0.5 //N/mm**2
//Sub values and further simplifying we get
P2=16*(%pi*(d1**4-d2**4))*d1*(M-(M**2+T**2)**0.5)*10**-11

//Result
printf("\n Bending Moment safely applied to shaft is %0.2f  KN-m",M)
printf("\n Min Principal Stress is %0.3f  N/mm**2",P2)
