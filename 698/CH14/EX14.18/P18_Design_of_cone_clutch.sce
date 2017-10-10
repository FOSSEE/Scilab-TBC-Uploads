clc
//Exercise 14.18
//Design of cone clutch

//------------------------------------------------------------------------------
//Given Data:
//Power to be transmitted
P=10000 //Watt
//Speed
N=800 //rpm
//Limiting normal pressure
pmax=0.09*(10^6) //Pa
//coefficient of friction
f=0.2
//cone pitch angle
alpha=24/2 //degrees

//------------------------------------------------------------------------------
//Function to standardize the dimensions
std=[1 2 3 4 5 6 8 10 12 15 18 20 24 26 30:5:500]//array of standard dimensions
n=length(std)

funcprot(0)
function y=stddim(x)
    x=x*(10^3)
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
//To find dimensions of clutch Ri,Ro,Rm,b and axial force required to engage the clutch
//b=Rm/2
//Rm=(Ro+Ri)/2
//In cone clutch, (Ro-Ri)=b*sin alpha
//Assume r=Ro/Ri
//Solving the above equations, we obtain a relation
//r=(4+sin alpha)/(4-sin alpha)
r=(4+sind (alpha))/(4-sind (alpha))

r=(round(r*100))*(10^-2)//rounding off to two decimal places

//pmax=F/(2*%pi*(Ro-Ri)*Ri)

//Torque transmitting capacity
T=(P*60)/(2*%pi*N)
//T=(F*f*Rm)/sin(alpha)
//F*Rm=(T*sin(alpha))/f
//F*((Ro+Ri)/2)=(T*sin(alpha))/f


Ri=((2*T*sind(alpha))/(f*(1+r)*(r-1)*2*%pi*pmax))^(1/3)
Ri=stddim(Ri)
F=pmax*2*%pi*(Ri^2)*(r-1)
Ro=r*Ri
Ro=stddim(Ro)
Rm=(Ro+Ri)/2
b=Rm/2

//------------------------------------------------------------------------------
//Printing result file to .txt
res18=mopen(TMPDIR+'18_design_of_cone_clutch.txt','wt')
mfprintf(res18,"(a)Torque transmitting capacity of clutch is %0.3f Nm\n\n",T)
mfprintf(res18,"(b)To find axial thrust and dimensions, we need to solve the following equations:\n")
mfprintf(res18,"\tF=pmax*2*pi*(Ri^2)*(r-1)---Eq 1\n")
mfprintf(res18,"\t(F*Ri)=(2*T*sin(alpha))/(f*(1+r))---Eq 2\n\n")
mfprintf(res18,"(c)Width of face is half of mean radius:\n")
mfprintf(res18,"\tb=(1/2)*Rm\n")
mfprintf(res18,"\tRo=r*Ri\n\twhere r=(4+sin (alpha))/(4-sin (alpha))\n\n")
mfprintf(res18,"(d)Solving the above equations, we get\n")
mfprintf(res18,"\tMAIN DIMENSIONS:\n")
mfprintf(res18,"Inner radius of clutch is %0.2f mm\n",Ri*(10^3))
mfprintf(res18,"Outer radius of clutch is %0.2f mm\n",Ro*(10^3))
mfprintf(res18,"face width of clutch is %0.2f mm\n\n",b*(10^3))
mfprintf(res18,"Axial force required to engage the clutch is %0.3f N\n",F)
mclose(res18)
editor(TMPDIR+'18_design_of_cone_clutch.txt')
//------------------------------------------------------------------------------
//---------------------------------End of program-------------------------------