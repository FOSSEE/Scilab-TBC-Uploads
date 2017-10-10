
clear//

//Variable Declaration
d=150 //Depth of the web in mm
wf=100 //Width of the flange in mm
df=20 //Depth of the flange in mm
t=20 //Thickness of the web in mm

//Calculations
y_bar=10**-3*(((wf*df*(d+df*0.5))+(d*t*d*0.5))/(wf*df+d*t)) //Distance of Neutral Axis in m
//Simplfying the computation
a=wf*df**3*12**-1
b=wf*df*((d+df*0.5)-y_bar*10**3)**2
c=t*d**3*12**-1
f=t*d*((d*0.5)-y_bar*10**3)**2
I=(a+b+c+f)*10**-12 //Moment of inertia in mm^3

//Limit Moment
yp=(wf*df+d*t)/(2*t) //Plastic Neutral Axis in mm
Myp=I/y_bar //Yielding will start at moment without the stress term to ease computation
mom=10**-9*((t*yp**2*0.5)+(wf*df*(d-yp+10))+(t*25**2*0.5)) //Sum of 1st moments
Ml_Myp=mom*Myp**-1 //Ratio

//Result
printf("\n The ratio ML/Myp= %0.3f ",Ml_Myp)
