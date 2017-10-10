clc
clear
//INPUT DATA
BP=50;//Brake power in kW
bmepp=700;//mean effective pressure pickup van
bmept=850;//mean effective pressure typical
nc=4;//4-stroke cylinder
n=2;//for 4 cyliners 
Sp=8;//mean piston speed
N=3000;//speed in rpm
L=0.107;//stroke in m

//CALCULATIONS
Nm=Sp/(2*L);//Design speed in rps
db=(BP*n/(bmepp*4*Nm*3.14/4))^(1/3);//bore diameter in m^3
Vt=(3.14*(db^3)*nc/4);//Capacity of the engine in litres
Tm=(bmept*Vt)/(2*3.14*n);//Maximum torque in kNm

//OUTPUT
printf('(i)Design speed %3.2f rps \n (ii)capacity of the engine %3.5f m^3 \n (iii)Maximum torque is %3.2f kNm',Nm,Vt,Tm)

