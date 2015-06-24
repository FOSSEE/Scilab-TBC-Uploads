clear;
//clc();

function y=z(x)
y=sin(x)
endfunction

exact=-2.5432;

pe=50;
pm=100;
p_inc=30;

del1=asin(pe/pm);

//at point b
pb=80;
del2=asin(pb/pm);

a1=pb*(0.927-0.523)-100*intg(0.523,0.927,z);

a2=100*intg(0.927,(3.14-0.927),z)-80*(3.14-2*del2);

if a1<a2 then
    disp("the generator will remain stable");
else
    disp("the system is unstable");
end
