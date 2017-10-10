
//variable declaration
C=3*10**8                     //Velocity of light
W=632.8*10**-9                //wavelength
P=2.3
t=1
h=6.626*10**-34              //Planck constant 
S=1*10**-6

//Calculations
V=C/W                        //Frequency
n=((P*10**-3)*t)/(h*V)       //no.of photons emitted
PD=P*10**-3/S                //Power density

//Result
printf('Frequency= %0.3f    *10**14 Hz    \n',(V/10**14))
printf('no.of photons emitted= %0.3f    *10**15 photons/sec    \n',(n/10**15))
printf('Power density = %0.3f   kWm**-2     \n',(PD/1000))