clear;
clc;
close;
disp("Example2.13")
M1=0.5 //inlet mach no.
p=10 //(p=pt1/p0) whaere pt1 is inlet total pressure and p0 is ambient pressure.
dpc=0.01 //dpc=(pt1-Pth)/pt1 i.e. total pressure loss in convergant section
f=0.99 //f=Pth/pt1
dpd=0.02 //dpd=(Pth-pt2)/Pth i.e. total pressure loss in the divergent section
j=1/0.98 //j=Pth/pt2
A=2 //a=A2/Ath. nozzle area expansion ratio.
gm=1.4 // gamma
R=287 //J/kg.K universal gas constant.
//Calculations:
//"th"" subscript denotes throat.
Mth=1 //mach no at thorat is always 1.
M2=poly(0,"M2")
k=(j)*(1/A)*(Mth/(1+(0.2*(Mth)^2))^3)
po=k*(1+(0.2*(M2)^2))^3 -M2;
W=roots(po)


i=1
s=1
while i<=6
z=W(i)
//disp(z)
if imag(z)==0 then
    if real(z)>1 then //since large nozzle pressure ratio ()
        M2=z
    end
      end

i=i+1
end
disp(M2,"(a)The exit Mach no. M2:")
//p2/pt2=1/(1+(gm-1)/2*M2^2)^(gm/(gm-1)) 
//pt2=(pt2/Pth)*(Pth/pt1)*(pt1/p0)*p0
//let pr=p2/p0
pr=((1/j)*f*p)/(1+(0.2*(M2)^2))^(gm/(gm-1))

disp(pr,"(b)The exit static pressure in terms of ambient pressure p2/p0:")//Fxwall=-Fxliquid=I1-I2

//let r=A1/Ath
r=(f)*(1/M1)*(((1+((gm-1)/2)*(M1)^2)/((gm+1)/2))^((gm+1)/(2*(gm-1))))
//disp(r)
//Psth is throat static pressure.
//z1=Psth/pt1=f/((gm+1)/2)^(gm/(gm-1))
z1=f/((gm+1)/2)^(gm/(gm-1))
//disp(z1)
//p1 is static pressure at inlet
//s1=p1/pt1
s1=1/(1+((gm-1)/2)*(M1)^2)^(gm/(gm-1))
//disp(s1)
//let y=Fxcwall/(Ath*pt1), where Fxwall is Fx converging-wall
y=s1*r*(1+(gm*(M1)^2))-(z1*(1+(gm*(Mth)^2)))
disp(y,"(c)The nondimensional axial force acting on the convergent nozzle:")
//similarly finding nondimensional force on the nozzle DIVERGENT section
//y1=Fxdiv-wall/Ath*pt1
//f1=p2/pt1
f1=pr*(1/p)
//disp(f1)
y1=z1*(1+(gm*(Mth)^2))-f1*A*(1+(gm*(M2)^2))
disp(y1,"(d)The nondimensional axial force acting on the divergent nozzle:")
//total axial force acting on nozzle wall: Fsum=y+y1
Fsum=y+y1
disp(Fsum,"(e)The total axial force(nondimensional) acting on the nozzle: ")







