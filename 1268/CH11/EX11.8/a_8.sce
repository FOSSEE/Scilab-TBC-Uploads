clc;
disp("Example A.8")
Re=90000
f1=0.3313/((log(5.74/(Re^0.9)))^2)
f2=0.079/(Re^0.25)
if((f1-f2)<0.001) then
    disp("Excellent agreement in friction factor is seen")
end

    
