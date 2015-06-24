clear;
clc;
funcprot(0);

//given data

R = 0.5;//degree of reaction
Cp = 1005;//kJ/(kgC)
cx1_Ut_rt = 0.4;
delT0 = 16.1;//temperature rise
Ut = 300;//in m/s

//calculations
A1 = cx1_Ut_rt^2 +(0.5-0.18*log(1));
c1 = 2*(1-R);
c2 = Cp*delT0/(2*Ut^2 *(1-R));
A2 = 0.56;
k = 0.4:0.01:1.0;
n = (1.0-0.4)/0.01 + 1;
i = 1;
for i = 1:n
    cx1_Ut(i) = sqrt(A1 - (c1^2)*(0.5*k(i)^2 - c2*log(k(i))));
    cx2_Ut(i) = sqrt(A2 - (c1^2)*(0.5*k(i)^2 + c2*log(k(i))));
    R_(i) = 0.778+log(k(i));
    Rn(i) = 0.5;
end

//Results
plot(k,cx1_Ut,'bo-');
plot(k,cx2_Ut,'<>r-');
title("Solution of exit axial-velocity profile for a first power stage","fontsize",3) ;//title of the plot
xlabel("Radius ratio, r/rt","fontsize",3) ;//x label
ylabel("cx/Ut","fontsize",3) ;//y label 
legend(["(cx2/Ut)";"(cx1/Ut)"] , opt=2); //legend box
a=gca(); 
b = newaxes(); 
b.y_location = "right"; 
b.filled = "off"; 
b.axes_visible = ["off","on","on"]; 
b.axes_bounds = a.axes_bounds; 
b.font_size = a.font_size; 
plot(k,R_,"g");
plot(k,Rn,);
ylabel("Reaction","fontsize",3) ;//y label 
legend(["True Reaction";"Nominal Reaction"] , opt=1); //legend box

