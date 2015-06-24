pathname=get_absolute_file_path('16_11.sce')
filename=pathname+filesep()+'16_11data.sci'
exec(filename)
function[si]=sing(a,a1)
    if(a<a1) then
        si=0;
    else
        si=(a-a1);
    end
endfunction
deff("[v]=f(z)","v=(M0/(EI*6*L))*(-z^3 +(3*L*(sing(z,b))^2)-(2*L^2 -6*L*b +3*b^2)*z)");
z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\n\nclick on the point to view its coordinate on the plot");