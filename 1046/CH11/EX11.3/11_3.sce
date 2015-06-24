//Example 11.3
//Page No. 489
//given
//Free strean velocity (v1) and temp.(t1) on side 1
v1=6 //m/s
t1=150 //degree celcius
//same on  side 2
v2=3 //m/s
t2=50 //degree celcius
//distant
x=0.7 //m
//The plate temp. is assumed to be equal to the mean of the bulk air temp on the two sides of the plates
T=100 //degree celcius
//Side 1
//mean air temp.
tm1=(T+t1)/2
//From thermophysical properties:kinetic viscosity (kv),Prandtl no.(P), thermal conductivity (k)
kv1=2.6*10^-5 //m^2/s
P1=0.69
k1=0.0336 //W/m degree celcius
//Reynold no.
Re1=x*v1/kv1
//Nusslet no(N1)
a=1/3
N1=0.332*(Re1)^0.5*P1^a
h1=k1*N1/x
//Side 2 of the plate
tm2=(T+t2)/2
//Similarly
kv2=2.076*(10)^-5 //m^2/s
P2=0.70
k2=0.03 //W/m degree celcius
Re2=x*v2/kv2
N2=0.332*(Re2)^0.5*P2^a
h2=k2*N2/x
//overall heat transfer coeff. 
U=h1*h2/(h1+h2)
//The local rate of heat exchange
RH=U*(t1-t2)
printf("Local rate of heat exchange is  %f W/m2\n\n",RH)
//the plate temp is given by
TP=t2+(t1-t2)*U/h2
printf("Plate temperature is :%f Celsius \n",TP)
