clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction

previousprot = funcprot(0)
funcprot(0)

mag=10;
theta=190;

[r,i]=d(mag,theta);
ia0=complex(r,i);

mag=6;
theta=20;

[r,i]=d(mag,theta);
ia1=complex(r,i);

mag=5;
theta=50;

[r,i]=d(mag,theta);
ia2=complex(r,i);

ia=(ia0+ia1+ia2);

mag=1;
theta=120;

[r,i]=d(mag,theta);

alpha=complex(r,i); 

ib=(ia0 +alpha^2*ia1 +alpha*ia2);

ic=ia0+alpha*ia1+alpha^2*ia2;

mag=30;
theta=-30;

[r,i]=d(mag,theta);
va0=complex(r,i);

mag=450;
theta=0;

[r,i]=d(mag,theta);
va1=complex(r,i);

mag=225;
theta=40;

[r,i]=d(mag,theta);
va2=complex(r,i);

va=(va0+va1+va2);

mag=1;
theta=120;

[r,i]=d(mag,theta);

alpha=complex(r,i); 

vb=(va0 +alpha^2*va1 +alpha*va2);

vc=va0+alpha*va1+alpha^2*va2;

s=3*va0*conj(ia0)+ 3*va1*conj(ia1)+ 3*va2*conj(ia2);
printf("The complex power with symmetrical components in VA is:");
disp(s);

s1=va*conj(ia)+vb*conj(ib)+ vc*conj(ic);
printf("The complex power unbalanced three phase components in VA is:");
disp(s1);
