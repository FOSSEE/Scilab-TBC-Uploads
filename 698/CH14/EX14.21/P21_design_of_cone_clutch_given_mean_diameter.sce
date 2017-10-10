clc
//Example 14.21
//Design of cone clutch with given mean diameter

//------------------------------------------------------------------------------
//Given Data:
//power to be transmitted
P=20000//Watts
//speed
N=600//rpm
//Mean diameter
Dm=0.2//m
//Mean radius
Rm=Dm/2
//Taper of cone
a=1/15
alpha=atand(a)
//coefficient of friction
f=0.18

//------------------------------------------------------------------------------
//Function to standardize the dimensions
funcprot(0)
function y=stddim(x)
    x=x*(10^3)
    std=[1 2 3 4 5 6 8 10 12 15 18 20 24 26 30:5:400]
    n=length(std)
    for i=1:n
        if (x<std(i)) then
            y=std(i)
            break
        else
            continue
        end
    end 
    y=y*(10^-3)
endfunction

//------------------------------------------------------------------------------
//Torque transmitted
T=(P*60)/(2*%pi*N)

//T=(F*f*Rm)/sin(alpha)
//Axial force transmitted
F=(T*sind(alpha))/(f*Rm)

//To design the cone clutch
//Assuming allowable normal pressure
p=0.09*(10^6)//Pa
//Fn=F=p*2*%pi*Rm*b
//face width b
b=F/(p*2*%pi*Rm*sind(alpha))
b=stddim(b)

//Ri=inner radius 
//Ro=outer radius 
//(Ro+Ri)/2=Rm
//(Ro-Ri)/b=sin (alpha)
//solving the two equations, storing coefficients of Ri and Ro in matrix R, and constants in matrix c
R=[1 1;1 -1]
c=[(2*Rm);(b*sind(alpha))]
x=R\c
Ro=x(1)
Ri=x(2)

//------------------------------------------------------------------------------
//Printing result file to .txt
res21=mopen(TMPDIR+"21_design_of_cone_clutch_given_mean_diameter.txt",'wt')
mfprintf(res21,"Axial force required to prevent slipping is %0.2f N\n",F)
mfprintf(res21,"Face width required is %0.2f mm\n",b*(10^3))
mfprintf(res21,"Outer radius is %0.1f mm\n",Ro*(10^3))
mfprintf(res21,"Inner radius is %0.1f mm",Ri*(10^3))
mclose(res21)
editor(TMPDIR+"21_design_of_cone_clutch_given_mean_diameter.txt")
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------