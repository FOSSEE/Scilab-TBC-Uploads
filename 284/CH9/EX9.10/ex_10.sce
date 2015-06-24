// Chapter 9_The bipolar transistor
//Caption_Ebers Moll model
//Ex_10//page 394
T=300
alpha_f=0.99
alpha_r=0.20
Ic=.001
Ib=50*10^-6
Vt=0.0259
x=Ic*(1-alpha_r)+Ib
y=alpha_f*Ib-((1-alpha_f)*Ic)
z=alpha_f/alpha_r
VCEsat=Vt*log(x*z/y)
printf('The collector emitter saturation voltage is %1.3f V',VCEsat)