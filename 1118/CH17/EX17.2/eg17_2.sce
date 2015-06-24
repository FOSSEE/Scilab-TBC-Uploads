clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

ia=complex(12,6);
ib=complex(12,-12);
ic=complex(-15,10);
mag=1;
theta=120;
[r,i]=d(mag,theta);
alpha=complex(r,i);

ia0=(1/3)*(ia+ib+ic);
printf("The zero sequence component of current in amperes is:");
disp(ia0);
ia1=(1/3)*(ia+alpha*ib+alpha^2*ic);
printf("The positive sequence component of current in amperes ia1=");
disp(ia1)

ib1=alpha^2*ia1;
printf("The positive sequence component of current in amperes ib1=");
disp(ib1);

ic1=alpha*ia1;
printf("The positive sequence component of current in amperes ic1=");
disp(ic1);

ia2=(1/3)*(ia+alpha^2*ib+alpha*ic);
printf("The negative sequence component of current in amperes ia2=");
ib2=alpha*ia2;
printf("The negative sequence component of current in amperes ib2=");
disp(ib2);
ic2=alpha^2*ia2;
printf("The negative sequence component of current in amperes ic2=");
disp(ic2);
