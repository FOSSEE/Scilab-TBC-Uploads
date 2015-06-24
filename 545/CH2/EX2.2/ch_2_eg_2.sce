clc
disp("the solution of ex 2.2 --> Pressure Drop in Pipe");
meu=1.79*10^-5
rough=.0000015     //roughness
dia=.004
e_by_D=rough/dia
rho=1.23
v=50              //velocity of air
l=1
Re=(rho*v*dia)/meu         //Reynold's number
ffnew=0.01
e=1
t1=e_by_D/3.7              //term 1 of eqn.
t2=2.51/Re                 //term 2 of eqn.
disp(Re,"the Reynolds no. is");
funcprot(0)
while e>1e-6 do ff=ffnew,function y=Fh(ff),
        t3=sqrt(ff),
    y=1/t3+2*log(t1+t2/t3)/2.3,                    //divide by 2.3 since log is base 'e' instead of 10
endfunction;
fdash=derivative(Fh,ff);             //f'(ff)
ffnew=ff-Fh(ff)/fdash;
e=abs(ff-ffnew)
end
disp(ff,"the fanning friction factor is")
delta_p=(ff*l*v^2*rho)/(2*dia)                  //pressure drop
disp(delta_p,"the pressure drop in pascals is");