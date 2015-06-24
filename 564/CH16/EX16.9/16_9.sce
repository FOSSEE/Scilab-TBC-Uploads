pathname=get_absolute_file_path('16_9.sce')
filename=pathname+filesep()+'16_9data.sci'
exec(filename)
clear
function[si]=sing(a,b)
    if(a<b) then
        si=0;
    else
        si=(a-b);
    end
endfunction
deff("[v]=f(z)","v=(1/EI)*(((W*z^3)/8) -((W/6)*(sing(z,a))^3)-((W/6)*(sing(z,2*a))^3)+((W/3)*(sing(z,3*a))^3)-((5*W*z*a^2)/8))");
for i=1:400*a
    x0=f((i-1)/100),x1=f(i/100),x2=f((i+1)/100);
    y1=(x0-x1),y2=(x1-x2);
    if(y1*y2<0) then
        if(y1<0) then
            P=i/100;
            P1=f(i/100);
        else
            Q=i/100;
            Q1=f(i/100);
        end
    end
end
z=[0:0.05:4*a];
fplot2d(z,f);
xgrid(3);
xtitle( 'deflection curve', ' -z- ', '-v-');
datatipToggle();
printf("\nmaximum positive deflection: %f m",P1);
printf("\nat z= %f m",P);
printf("\nmaximum negative deflection: %f m",Q1);
printf("\nat z= %f m",Q);
printf("\n\nclick on the point to view its coordinate on the plot");