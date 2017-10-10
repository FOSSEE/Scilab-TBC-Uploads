// Problem 5.14,Page no.136

clc;clear;
close;

B=10 //cm //width of timber section
D=15 //cm //depth of timber section
b=10 //cm //width of steel plate
t=12 //mm //thickness 
w=3 //KN/m //Uniformly distributed Load
L=4 //m //Span of beam
m=20 //Ratio of modulus of elasticity of steel to timber 
W=3 //KN/m //Load

//Calculations

y_1=15*2**-1 //C.G of timber 
y_2=1.2*2**-1 //C.G of steel plate
b_s=10*m**-1 //cm //Equivalent width of steel
Y_bar=(10*1.2*0.6+15*0.5*8.7)*(10*1.2+15*0.5)**-1 //cm //distance of C.G from bottom edge

I=1*12**-1*10*(1.2)**3+10*1.2*(3.72-0.6)**2+1*12**-1*0.5*(15)**3+0.5*15*(7.5-3.72)**2
M=W*10**5*L**2*8**-1 //N*m

Y_bar_1=3.72 //cm //C.G from bottom edge
Y_bar_2=16.2-Y_bar //cm //C.G from top edge

sigma_1=(M*I**-1*Y_bar_1)*10**-2 //N/mm**2 //stress at bottom

sigma_2=(M*I**-1*Y_bar_2)*10**-2 //N/mm**2 //stress at top

sigma_max=sigma_2*m**-1 

//The Answers in book for Moment of Inertia about x-x axis onwards are incorrect

//Result
printf("Moment of Inertia = %.f N-m",M)
printf("\n The Max Stress in steel is %.2f N/mm^2",sigma_1)
printf("\n The Max Stress in timber is %.2f N/mm**2",sigma_max)
