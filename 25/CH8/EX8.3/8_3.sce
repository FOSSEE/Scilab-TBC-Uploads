// example:-8.3,page no.-404.
// program to design bethe-hole coupler for x-band wave guide.
f=9*10^9;C=20;a=0.02286;b=0.01016;Ko=188.5;B=129;Z10=550.9;P10=4.22*10^-7;lamdao=0.0333;uo=4*%pi*10^-7;eo=8.854*10^-12;w=2*%pi*f;
s=(a/%pi)*asin(lamdao/sqrt(2*(lamdao^2-a^2)))*10^3;
// a=10*b;// as C=20db; // take x=a/b; so x=10;
ro=(P10/((10*w)*((((2*eo/3)+(4*uo)/(3*Z10^2))*0.944)-((4*%pi^2*uo*0.056)/(3*B^2*a^2*Z10^2)))))^(1/3)*10^3;
disp(s,'the aperture position in mm = ')
disp(ro,'the aperture size in mm = ')
disp("NOTE:-the above shown results completes the design of the betha hole coupler.")