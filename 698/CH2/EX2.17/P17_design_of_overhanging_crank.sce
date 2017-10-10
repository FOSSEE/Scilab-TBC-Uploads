clc
//Example 2.17
//Design of shaft of overhanging crank
//------------------------------------------------------------------------------

//Given data:
//Loads
P=2000 // N
//Stresses
Ss=75*(10^6) // MN/m^2

//Distance of shaft from plane of action
l1=0.3 // m
//Distance of shaft from line of action
l2=0.15 // m

//Bending moment
M=P*l2
//Torsion
T=P*l1

//------------------------------------------------------------------------------
//Function to standardize dimensions by choosing from available range
funcprot(0)
function [y]=stddim(x)
    x=x*(10^3)
    std=[1 2 3 4 5 6 8 9 10 12 15 18 20 24:2:60]
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

res17=mopen(TMPDIR+'17_design_of_overhanging_crank.txt','wt')
mfprintf(res17,"Let the diameter of shaft be d\n\n")
//Bending stress
mfprintf(res17,"Bending Stress Sx= M*c/I\n\twhere c=d/2\n\t\t I=(pi/64)*d^4\n\n")
//Torsional shear Stress
mfprintf(res17,'Shear stress Txy=T*r/J\n\twhere r=d/2\n\t\t J=(pi/32)*d^4\n\n')

mfprintf(res17,'Maximum shear stress\n\tTmax=sqrt( ((Sx-Sy)/2)^2 + (Txy^2) )\n')
mfprintf(res17,'where Tmax is 75MN/m^2 and Sy=0\n')

mfprintf(res17,'diameter\n\td=( (16* sqrt( M^2 + T^2 )) / (Ss*pi) )^1/3\n\n')

d=( (16* sqrt( M^2 + T^2 )) / (%pi*Ss) ) ^ (1/3)
disp (d)
mfprintf(res17,'The calculated diameter is %0.4f m',d)

mfprintf(res17,'\nStandardizing the above value, we get\n')

[ds]=stddim(d)

mfprintf(res17,'\n\td=%0.4f m = %0.1f mm',ds,ds*10^3)
mclose(res17)
editor(TMPDIR+'17_design_of_overhanging_crank.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------