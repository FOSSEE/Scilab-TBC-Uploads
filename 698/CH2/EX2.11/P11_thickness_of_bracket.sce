clc
//Example 2.11
//Thickness of bracket

//Given Data:

funcprot(0)
function [y]=stddim(x)
    x=x*(10^3)
    standard=[1 2 3 4 5 6 8 9 10 30:2:60 65:5120]
    n=length(standard)
    for i=1:n
        if (x<standard(i)) then
            y=standard(i)
            break
        else
            continue
        end
    end 
    y=y*(10^-3)
endfunction


//Maximum tensile stress
S=30*(10^6) // MN/m^2

//Load
P=20000 // N

//Dimensions
//width of section
b=0.04 // m
//Distance of line of action from bottom section
w=0.05 // m

res11=mopen(TMPDIR+'11_thickness_of_bracket.txt','wt')

mfprintf(res11,"Assuming the thickness of the bracket as t\n")
mfprintf(res11,"Area of cross section A= b*t = 0.04*t\n")

//Direct Stress
//Sd=P/A
mfprintf(res11,"Direct stress Sd= P/A \n")
//Bending Stress
//Sb=(M*c)/I
mfprintf(res11,"Bending stress Sb=(M*c)/I\n\twhere c=w+ t/2 i.e., 0.05+ t/2\n\t")
mfprintf(res11,"M=P*t/2\n\tI=(b*(t^3))/12\n\n")

//Maximum tensile stress
//S=Sb+Sd
mfprintf(res11,"Maximum tensile stress:\n\tS=Sb+Sd\n")
mfprintf(res11,"\tS=(P/A)+((M*c)/I)\n\n")
mfprintf(res11,"On simplifying above equation,\n\t")

mfprintf(res11,"we get\n\t (S*b)t^2 - (4P)t - 6Pw = 0\n\t")
mfprintf(res11,"30=(500/t)+(155*(100+t) / t^2\n\n")

//Solving the equation

p=poly([(-6*P*w) (-4*P)  (S*b)],'thk','c')
thk=roots(p)
disp (thk)
n1=length(thk)
//mfprintf(res11,"Equation:\t %s",p)

//selecting only positive roots


//    if (thk(1)<=0) 
//        t=thk(2)
 //   else
  //      t=thk(1)
    //end

t=thk(2)

disp(t)

//mfprintf (res11,"\n\nThickness t=%f mm\n",t*(1000))

//Standardizing the dimension
//Function to standardize the dimensions

//ts=t

//disp(t)

//[ts]=stddim(t)

//disp (ts)

mfprintf(res11,"Standardizing the dimension, we get t=%0.1f mm\n\n",ts*(1000))

//Calculation the corresponding stress induced,
A=b*ts
M=P*(ts/2)
c=w+(ts/2)
I=(b*(ts^3))/12
Sa=(P/A)+((M*c)/I)
mfprintf(res11,"The corresponding stress induced is %0.2f MN/m^2",Sa*(10^-6))
mclose(res11)
editor(TMPDIR+'11_thickness_of_bracket.txt')
disp (Sa)