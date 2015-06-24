clc
clear

//input
vp=1100;//voltage on the primary in volts
vs=240;//secondary voltage in volts
f=50;//supply frequency in hertz
b=1.4;//flux density in tesla
s=0.2;//side of the square core in meter

//calculations
ag=s*s;//gross area of core in square meters
am=0.9*ag;//magnetic area of core in square meters
np=vp/(4.44*b*am*f);//number of turns in primary
ns=np*(vs/vp);//number of turns in secondary

//output
mprintf('the number of turns in the primary and secondary winding would be %3.0f and %3.0f respectively',np,ns)
