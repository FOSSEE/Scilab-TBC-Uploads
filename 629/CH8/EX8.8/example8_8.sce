clear
clc
//Example 8.8 MEASURING HEAD LOSS IN NOZZLE IN REVERSE FLOW
//p-prototype, m-model
Vm=20; //[ft/s]
Dm=3/12; //[ft]
vm=1.22*10^-5; //[ft^2/s]
Vp=5; //[ft/s]
Dp=3; //[ft]
vp=1.41*10^-5; //[ft^2/s]
//Reynolds numbers
Rem=Vm*Dm/vm 
Rep=Vp*Dp/vp
rho=1.94; //[slugs/ft^3]
Pm=1; //pressure [lbf/in^2]
//Pressure coefficient
CPm=Pm*144/(rho*Vm^2/2)
//Both Rep, Rem >10^3, therefore
CPp=CPm
Pp=(CPp*rho*Vp^2/2)/144 //[lbf/in^2]
printf("\n The pressure drop in the actual nozzle = %.4f psid.\n",Pp)//