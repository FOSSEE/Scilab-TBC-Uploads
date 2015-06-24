clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

mag=150;
theta=0;
[r,i]=d(mag,theta);
ia=complex(r,i);
mag=150;
theta=-120;
[r,i]=d(mag,theta);
ib=complex(r,i);
mag=150;
theta=120;
[r,i]=d(mag,theta);
ic=complex(r,i);
mag=1;
theta=120;
[r,i]=d(mag,theta);
alpha=complex(r,i);

ia0=(ia+ib+ic)/3;
printf("The zero sequence component of current in amperes is:");
disp(round(ia0));
ia1=(ia+alpha*ib+ (alpha^2)*ic)/3;
printf("The positive sequence component of current in amperes ia1=");
disp(round(ia1));
ia2=(ia+alpha^2*ib+alpha*ic)/3;
printf("The negative sequence component of current in amperes ia2=");
disp(round(ia2));
//b).after fuse removal between two lines

i_b=0;
i_c=0;
i_a0=(ia+i_b+i_c)/3;
printf("The zero sequence component of current in amperes is:");
disp(i_a0);

ia1=(ia+alpha*i_b+alpha^2*i_c)/3;
printf("The positive sequence component of current in amperes ia1=");
disp(round(ia1));

ia2=(ia+alpha^2*i_b+alpha*i_c)/3;
printf("The negative sequence component of current in amperes ia2=");
disp(ia2);
