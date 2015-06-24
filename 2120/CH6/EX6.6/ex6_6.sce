//Exa 6.6
clc;
clear;
close;
//Given data
Q1= 278;// in kJ/s
T1= 283+273;// in K
T2= 50+273;// in K
// Let integrate of delta Q by T is V
disp("Part (a)")
Q2= 208;// in kJ/s
// By Clausius inequality 
V= Q1/T1-Q2/T2;
if V<0 then
    disp("The cycle is irreversible")
else
    if V>0 then
        disp("Reversible or irreversible cycle is not possible and the result is impossible")
    else
        disp("The cycle is reversible")
    end
end
disp("Part (b)")
Q2= 139;// in kJ/s
V= Q1/T1-Q2/T2;
if V<0 then
    disp("The cycle is irreversible")
else
    if V>0 then
        disp("Reversible or irreversible cycle is not possible and the result is impossible")
    else
        disp("The cycle is reversible")
    end
end
disp("Part (c)")
Q2= 161.5;// in kJ/s
V= Q1/T1-Q2/T2;
if V<0 then
    disp("The cycle is irreversible")
else
    if V>0 then
        disp("Reversible or irreversible cycle is not possible and the result is impossible")
    else
        disp("The cycle is reversible")
    end
end

