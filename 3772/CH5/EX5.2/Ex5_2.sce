
// Problem 5.2,Page no.122

clc;clear;
close;

D=160 //mm //Overall Depth
B=150 //mm //Width of Flange
f_t=40 //mm //Flange thickness
W_t=50 //mm //Web thickness
sigma_t=20 //N/mm**2 //tension stress
sigma_c=75 //N/mm**2 //compression stress

//Calculations

//Rectangle-1
a_1=150*40 //mm**2 //Area of Rectangle-1
y_1=40*2**-1 //mm //C.G of Rectangle-1

//Rectangle-2
a_2=120*50 //mm**2 //Area of Rectangle-2
y_2=40+120*2**-1 //mm //C.G of Rectangle-2

Y_bar=(a_1*y_1+a_2*y_2)*(a_1+a_2)**-1 //mm //Distance of C.G from the bottom flange
I=1*12**-1*150*40**3+150*40*(60-40)**2+1*12**-1*50*120**3+50*120*(100-60)**2 //mm**4 //M.I of section about N.A
y_t=60 //mm //Permissible tensile stress at the bottom face of flange from N.A
y_c=100 //mm //Permissible tensile stress at the top face of flange from N.A

//M=W*L*4**-1 //Max bending mooment at the centre

//Using the relation M*I**-1=sigma_t*y_t**-1 we get
W=(0.333*4*272*10**5)*(2.5*1000)**-1 //N //MAx central load

//Result
printf("The Max Bending Moment at the centre is %.2f N",W)
//Answer is wrong in the textbook.
