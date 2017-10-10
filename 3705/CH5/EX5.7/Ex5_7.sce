
clear//

//Variable Declaration
I=310 //Moment of inertia in in^4
V=160 //Shear Force in kips
//Dimension defination
tf=0.515 //Thickness of flange in inches
de=11.94 //Effective depth in inches
tw=0.295 //Thickness of web in inches
wf=8.005 //Width of lange in inches

//Calculations
//Part 1
Q=wf*tf*(de-tf)*0.5 //First moment about NA in inch^3
tau_min=(V*Q*10**2)/(I*tw) //Minimum shear stress in web in psi

//Part 2
A_2=(de*0.5-tf)*tw //Area in in^3
y_bar_2=0.5*(de*0.5-tf) //Depth in inches

Q_2=Q+A_2*y_bar_2 //First Moment in inches^3

tau_max=(V*Q_2*10**2)/(I*tw) //Maximum Shear Stress in psi

//Part 3
V_web=10.91*tw*(tau_min+((2*3**-1)*(tau_max-tau_min))) //Shear in the web in lb
perV=(V_web/V)*100 //Percentage shear force in web in %
t_max_final=V*10**3/(10.91*tw)

//result
printf("\n The final shear stress in the web portion is %0.0f psi",t_max_final)
