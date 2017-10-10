
clear//

//Variable Declaration
wf=6 //Width of the top flange in inches
df=0.8 //Depth of the top flange in inches
dw=8 //Depth of the web portion in inches
ww=0.8 //Width of the web portion in inches
Ra=1600 //Reation at point A in lb
Rb=3400 //Reaction at point B in lb
w=400 //Load on the beam in lb/ft
M_4=3200 //Moment at x=4 ft in lb.ft
M_10=4000 //Moment at x=10 ft in lb.ft

//Calculations
//Preliminary Calculations
//Area computation
A1=dw*ww //Area of the web portion in sq.in
A2=wf*df //Area of the top flange in sq.in
y1=dw*0.5 //Centroid from the bottom of the web portion in inches
y2=dw+df*0.5 //Centroid from the bottom of the flange portion in inches

//y_bar computation
y_bar=(A1*y1+A2*y2)/(A1+A2) //centroid of the section in inches from the bottom

//Moment of Inertia computation
I=(ww*dw**3*12**-1)+(A1*(y1-y_bar)**2)+(wf*df**3*12**-1)+(A2*(y2-y_bar)**2) //Moment of inertia in in^4

//Maximum Bending Moment
c_top=dw+df-y_bar //distance of top fibre in inches
c_bot=y_bar //Distance of bottom fibre in inches

//Stress at x=4 ft
sigma_top=-(12*M_4*c_top)*I**-1 //Stress at top fibre in psi
sigma_bot=12*M_4*c_bot*I**-1 //Stress at bottom fibre in psi

//Stress at x=10 ft
sigma_top2=M_10*12*c_top*I**-1 //Stress at the top fibre in psi
sigma_bot2=-M_10*12*c_bot*I**-1 //Stress at the bottom fibre in psi

//Maximum values
[sigma_t] = (max(sigma_bot,sigma_bot2,sigma_top,sigma_top2))
[sigma_c] = (min(sigma_top,sigma_top2,sigma_bot,sigma_bot2))

//Result
printf("\n The maximum values of stress are")
printf("\n Maximum Tension= %0.0f psi at x=4ft",sigma_t)
printf("\n Maximum Compression= %0.0f psi at x=10ft",-sigma_c)
