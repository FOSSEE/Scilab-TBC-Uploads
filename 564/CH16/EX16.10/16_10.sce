pathname=get_absolute_file_path('16_10.sce')
filename=pathname+filesep()+'16_10data.sci'
exec(filename)
clear
function[si]=sing(a,b)
    if(a<b) then
        si=0;
    else
        si=(a-b);
    end
endfunction
deff("[v]=f(z)","v=(1/EI)*(((L*W*z^3)/64) -((W/24)*(sing(z,0.5*L))^4)+((W/24)*(sing(z,0.75*L))^4)-((27*W*z*L^3)/2048))");
funcprot();
for i=1:100*L
    x0=f((i-1)/100),x1=f(i/100),x2=f((i+1)/100);
    y1=(x0-x1),y2=(x1-x2);
    if(y1*y2<0) then
       P=i/100;
       P1=f(i/100);
       printf("\nmaximum deflection: %f m",P1);
       printf("\nat z= %f m",P);
    end
end

z=[0:0.05:L];
fplot2d(z,f);
xgrid(3);
datatipToggle();
xtitle( 'deflection curve', ' -z- ', '-v-');
printf("\n\nclick on the point to view its coordinate on the plot");