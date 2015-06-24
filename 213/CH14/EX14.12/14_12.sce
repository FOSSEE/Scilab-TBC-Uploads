//To find load on each wheel
clc
//Given:
m=2000, mE=75 //kg
b=2.5, x=1.5, h=500/1000, L=1, dW=0.8, rW=dW/2, kE=100/1000, R=60 //m
IW=0.8 //kg-m^2
G=4
v=60*1000/3600 //m/s
//Solution:
//Refer Fig. 14.12
//Calculating the weight on the rear wheels
W2=(m*9.81*1)/b //N
//Calculating the weight on the front wheels
W1=m*9.81-W2 //N
//Calculating the weight on each of the front wheels
Wf=W1/2 //Weight on each of the front wheels, N
//Calculating the weight on each of the rear wheels
Wr=W2/2 //Weight on each of the rear wheels, N
//Calculating the angular velocity of wheels
omegaW=v/rW //rad/s
//Calculating the angular velocity of precession
omegaP=v/R //rad/s
//Calculating the gyroscopic couple due to four wheels
CW=4*IW*omegaW*omegaP //N-m
//Calculating the magnitude of reaction due to gyroscopic couple due to four wheels at each of the inner or outer wheel
P=2*(CW/(2*x)) //N
//Calculating the mass moment of inertia of rotating parts of the engine
IE=mE*(kE)^2 //kg-m^2
//Calculating the gyroscopic couple due to rotating parts of the engine
CE=IE*(kE)^2*G*omegaW*omegaP //N-m
//Calculating the magnitude of reaction due to gyroscopic couple due to rotating parts of the engine at each of the inner or outer wheel
F=2*(CE/(2*b)) //N
//Calculating the centrifugal force
FC=m*v^2/R //N
//Calculating the centrifugal couple tending to overturn the car
CO=FC*h //N-m
//Calculating the magnitude of reaction due to overturning couple at each of the inner or outer wheel
Q=2*(CO/(2*x)) //N
//Calculating the load on front wheel 1
Fw1=W1/2-P/2-F/2-Q/2 //Load on front wheel 1, N
//Calculating the load on front wheel 2
Fw2=W1/2+P/2-F/2+Q/2 //Load on front wheel 2, N
//Calculating the load on rear wheel 3
Rw3=W2/2-P/2+F/2-Q/2 //Load on rear wheel 3, N
//Calculating the load on rear wheel 4
Rw4=W2/2+P/2+F/2+Q/2 //Load on rear wheel 4, N
//Results:
printf("\n\n Load on front wheel 1 = %.2f N.\n\n",Fw1)
printf(" Load on front wheel 2 = %.2f N.\n\n",Fw2)
printf(" Load on rear wheel 3 = %.2f N.\n\n",Rw3)
printf(" Load on rear wheel 4 = %.2f N.\n\n",Rw4)