//example-19.9
//page no-582
//given
//deimension of aluminium piece
t=15*10^-3  //m (thickness)
b=60*10^-3  //m (width)
l=180*10^-3  //m (length)
//magnetic field
betaz=0.6  //T (tesla)
//current
I=25  //A
//hole mobility
sigmah=0.0012
//electrical conductivity
sigma=3.8*10^7  // per ohm m
//part(a)
//hall coefficient
HC=sigmah/sigma  //Vm/AT
//part(b)
//hall voltage
VAB=HC*I*betaz/t  //V
//part(c)
//resistance
R=l/sigma/b/t  //ohm
printf ("the hall coefficient is %.12f Vm/AT\n, hall voltage is %.9f V\n and resistance is %.6f ohm",HC,VAB,R)
