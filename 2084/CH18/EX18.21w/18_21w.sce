//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.21w
//calculation of separation between mirror and the lens for parallel emergence of the final beam

//given data
u=-12; //object distance(in cm)
f=15; //focal length(in cm) of the converging lens

//calculation
v=1/((1/f)+(1/u)); //lens formula

if(v<0)
    disp(-v,'image due to lens is formed on the left side of the lens at a distance(in cm) of');
else
    disp(v,'image due to lens is formed on the right side of the lens at a distance(in cm) of');
end

I1L=2*abs(v);
LI2=abs(f);
I1I2=I1L+LI2;

//let distance of mirror from I2 is x
//I1I2=75 cm
//u=-(75+x) cm
//v=-x cm
//f_mirror=-20 cm
//(1/v)+(1/u)=(1/f);   mirror formula
//substituting u,v,f we get  equation      x^2+35*X-1500=0

a=1; // for above equation coefficient of x^2
b=35; // for above equation coefficient of x^1
c=-1500; // for above equation coefficient of x^0 or the constant

x1=(-b+sqrt((b*b)-(4*a*c)))/(2*a); //first solution 
x2=(-b-sqrt((b*b)-(4*a*c)))/(2*a); //second solution 
//considering only the positive value of the solution ,as negative value has no physical meaning
if(x1>0)
    disp(f+x1,'the separation(in cm) between the lens and the mirror is');
if(x2>0)
    disp(f+x2,'the separation(in cm) between the lens and the mirror is');
end
