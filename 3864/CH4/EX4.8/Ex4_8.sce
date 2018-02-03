clear
//

//Initilization of Variables

L=3 //m //span
sigma_t=35 //N/mm**2 //Permissible stress in tension
sigma_c=90 //N/mm**2 //Permissible stress in compression

//Flanges
t=30 //mm //Thickness
d=250 //mm //Depth

//Web
t2=25 //mm //Thickness
b=600 //mm //Width

//Calculations

//Let y_bar be the Distance of N.A from Extreme Fibres
y_bar=(t*d*d*2**-1*2+(b-2*t)*t2*t2*2**-1)*(t*d*2+(b-2*t)*t2)**-1

//Moment of Inertia
I=(1*12**-1*t*d**3+t*d*(d*2**-1-y_bar)**2)*2+1*12**-1*(b-2*t)*t2**3+(b-2*t)*t2*(t2*2**-1-y_bar)**2

//Part-1

//If web is in Tension
y_t=y_bar //mm
y_c=d-y_bar //mm

//Moment carrying caryying capacity From consideration of tensile stress
M=sigma_t*I*(y_bar)**-1 //N-mm

//Moment carrying caryying capacity From consideration of compressive stress
M1=sigma_c*I*(y_c)**-1 //N-mm

//If w KN/m is u.d.l in beam,Max bending moment
//M=wl**2*8**-1
//After further simplifyng we get
//M=1.125*w*10**6 N-mm
w=M*(1.125*10**6)**-1 //KN

//Part-2

//If web is in compression
y_t2=178.299 //mm
y_c2=71.71 //mm 

//Moment carrying caryying capacity From consideration of tensile stress
M2=sigma_t*I*(y_t2)**-1 //N-mm

//Moment carrying caryying capacity From consideration of compressive stress
M3=sigma_c*I*(y_c2)**-1 //N-mm

//Moment of resistance is M2

//Equating it to bending moment we get
//M2=1.125*10**6*w2
//After further simplifyng we get
w2=M2*(1.125*10**6)**-1

//Result
printf("\n Uniformly Distributed Load carrying capacity if:web is in Tension %0.2f  KN",w)
printf("\n                                                :web is in compression %0.3f  KN",w2)
