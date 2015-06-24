pathname=get_absolute_file_path('16_4.sce')
ilename=pathname+filesep()+'16_4data.sci'
exec(filename)
Yc=(b^2 -t^2 +a*t)/(2*(a+b-t));
Xc=((((a/2)-a1+ 0.5*t)*a) +((b-t)*t/2))/(a+b-t);
Ixx=(1/3)*((t*((Yc-t)^3 -(Yc-b)^3))+(a*((Yc)^3 -(Yc-t)^3)));
P=a1- 0.5*t +Xc;
Iyy=(1/3)*((t*(P^3 -(P-a)^3))+((b-t)*(Xc^3- (Xc-t)^3)));
Ixy=a*t^2 *(Yc- t*0.5) + (b-t)*t*(Yc+ 0.5*t)*12;
M1=(1+round(100*Mx*Iyy/(Ixx*Iyy -Ixy^2)))/100,M2=(1+round(100*Mx*Ixy/(Ixx*Iyy -Ixy^2)))/100;
function[z]=Sz(x,y)
    z=M1*y -M2*x;
endfunction
Load=[Sz(-P,Yc);Sz(a-P,Yc);Sz(-P,Yc-t);Sz(a-P,Yc-t);Sz(-Xc,Yc-b);Sz(-Xc+t,Yc-b)];
Point1=[-P;a-P;-P;a-P;-Xc;-Xc+t];
Point2=[Yc;Yc;Yc-t;Yc-t;Yc-b;Yc-b];
maximum=Load(1);
for i=2:6
    if(abs(Load(i))>abs(Load(i-1))) then
        maximum=abs(Load(i));
        mm=i;
    end
end
printf("\nσz,max: %f N/mm^2",Load(mm));
disp("at point");
printf("\nX: %f ",Point1(mm));
printf("\nY: %f ",Point2(mm));


