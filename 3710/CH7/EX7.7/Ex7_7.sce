//Example 7.7, Page Number 334
//Response time of photodiode
clc;

it=2*(10**-6) //I-region thickness in metres
A=(100*(10**-6))*(100*(10**-6)) //Given Area in metres
lr=50 //Load resistor in ohms
v=10**5 //Saturation Velocity in Metre/second
er=12 //relative permittivity of InGaAs
k=8.85*(10**-12) //Absolute permittivity in farads per meter

t=it/v //Transit Velocity of electrons in m/s

//From equation 7.34
cj=(A*k*er)/it //cj is the device capacitance in farads

trc=cj*lr //in seconds

total=sqrt((t**2)+(trc**2)) //total is the total response time
mprintf("The Device Capacitance is:%0.1e F\n",cj)
mprintf(" The Total response time for the detector is:%.2e s",total)
