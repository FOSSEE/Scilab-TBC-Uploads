clear;
clc;
close;
disp("Example2.12")
M1=0.7;
dpt=0.99; //pt2/pt1=dpt.
gm=1.4; //gamma
//A2=1.237A1.
a=1/1.237;

//Calculations:
M2 = poly(0, "M2");
k=(1/dpt)*(a)*(M1/(1+(0.2*(M1)^2))^3)
pol = k*(1+(0.2*(M2)^2))^3 -M2;
W=roots(pol);
//disp(W)
i=1
while i<=6
z=W(i)
if imag(z)==0 then
    if real(z)<0.7 then  //since diffusing duct with inlet mach no. <1
        M2=z
    end
      end

i=i+1
end
disp(M2,"(a)The exit Mach no. M2:")
//p=p2/p1 i.e. static pressure ratio
p=dpt*((1+(gm-1)*(M1)^2/2)/(1+(gm-1)*(M2)^2/2))^(gm/(gm-1))
//disp(p)
Cpr=(2/(gm*(M1)^2))*(p-1) //Cpr is static pressure recovery : (p2-p1)/q1.
disp(Cpr,"(b)The static pressure recovery in the diffuser:")
//Change in fluid impulse:
//Fxwalls=I2-I1=A1p1(1+gm*M1^2)-A2p2(1+gm*M2^2)
//Let, u=Fxwall/(p1*A1)
u=1+gm*(M1)^2-(1.237)*(p)*(1+(gm*(M2)^2))
disp(u,"(c)The force acting on the diffuser inner wall nondimensionalized by inlet static pressure and area:")



