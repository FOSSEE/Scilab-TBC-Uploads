clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

mag=100;
theta=30;

[r,i]=d(mag,theta);
ia=complex(r,i);
mag=50;
theta=300;

[r,i]=d(mag,theta);
ib=complex(r,i);

mag=30;
theta=180;
[r,i]=d(mag,theta);
ic=complex(r,i);

ia0=(1/3)*(ia+ib+ic);
printf("The zero sequence component of current in amperes is:");
disp(ia0);

mag=1;
theta=120;
[r,i]=d(mag,theta);
alpha=complex(r,i);

ia1=(1/3)*(ia+alpha*ib+alpha^2*ic);
printf("The positive sequence component of current in amperes is:");
disp(ia1);

ia2=(1/3)*(ia+alpha^2*ib+alpha*ic);
printf("The negative sequence component of current in amperes is:");
disp(ia2);

in=ia+ib+ic;
printf("The return current to the neutral conductor in amperes is:");
disp(in);
