clear
//

//Initilization of Variables

//Timber size
b=150 //mm //Width
d=300 //mm //Depth

t=6 //mm //Thickness of steel plate
l=6 //m //Span

//E_s*E_t**-1=20 
//m=E_s*E_t**-1
m=20 
sigma_timber=8 //N/mm**2  //Stress in timber
sigma_steel=150 //N/mm**2 //Stress in steel plate

//Let m*t=Y
Y=m*t //mm
L=(2*t+b)*m //mm //Width of flitched beam

//Calculations

//Due to  synnetry cenroid,the neutral axis is half the depth
I=(1*12**-1*L*t**3+L*t*(b+t*2**-1)**2)*2+1*12**-1*(Y+b+Y)*d**3 //mm**4

y_max1=150 //mm //For timber
y_max2=156 //mm //For steel

//stress in steel
f_t1=1*m**-1*sigma_steel //N/mm**2

//Moment of resistance
M=f_t1*(I*y_max2**-1)

//load
w=8*M*(l**2)**-1*10**-6 //KN/m

//Result
printf("\n Load beam can carry is %0.2f  KN/m",w)
