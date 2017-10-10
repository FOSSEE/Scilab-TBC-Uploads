clc
clear
//INPUT DATA
Tmax=200;//Maximum Brake Torque in Nm
N=3600;//Speed range in rpm
Pmax=900;//Maximum engine torque in kPa
n=2;// For Four stroke engine
Mps=15*60;//mean piston speed in m/min

//CALCULATIONS
Vs=((2*3.14*Tmax*n)/(1000*Pmax));//Swept volume in m^3
d=((Vs/3.14)^(1/3))*1000;//Bore diameter
Nmax=(Mps*1000/(2*d));//Maximum crank speed in rpm
Bpm=800*(Vs/2)*(Nmax/(60));//Maximum break power in kW

//OUTPUT
printf('(i)swept volume is %3.5f m^3 \n (ii)bore diameter is %3.i mm \n (iii)maximum break power is %3.2f kW ',Vs,d,Bpm)


