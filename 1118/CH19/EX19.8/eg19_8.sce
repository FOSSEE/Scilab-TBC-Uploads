clear;
//clc();

function y=z(x)
y=sin(x)
endfunction

exact=-2.5432;


pe=80;
pmax=200;
del1=asin(pe/pmax);

//at curve b

pmax2=100;
del2=asin(pe/pmax2);
delm=3.14-del2;

a1=pe*(del2-del1)- pmax2*intg(del1,del2,z);

a2=pmax2*intg(del2,delm,z)-pe*(delm-del2);

if a1<a2 then
    disp("the generator will remain stable");
    
   else
         disp("the system is unstable");
end
