clear;
//clc();

function [r,i]=d(mag,theta)
    r=mag*cosd(theta);
    i=mag*sind(theta);
    
endfunction



previousprot = funcprot(0)
funcprot(0)

ea=1;
za0=(%i)*0.08;
za1=(%i)*0.12;
za2=(%i)*0.12;
sb=25*10^6;
vb=11000;

zf=(%i)*0.03;
ia1=ea/(za0+za1+za2+3*zf);

ia0=ia1;
ia2=ia1;
mag=1;
theta=120;

[r,i]=d(mag,theta);

alpha=complex(r,i);

ia=ia0+ia1+ia2;

ibas=sb/(sqrt(3)*vb);

ia=ia1*ibas;
ib=0;
ic=0;

va1=ea-za1*ia1;

va2=-za1*ia1;

va0=-(za0+3*zf)*ia1;


va=va0+va1+va2;

vb=va0+alpha^2*va1+alpha*va2;

v_c=va0+alpha*va1+alpha^2*va2;

vab1=va-vb;

vbc1=vb-v_c;

vca1=v_c-va;

vbas=11/sqrt(3);

vab=vab1*vbas;
printf("The voltage of line ab in kV is vab=");
disp(vab);

vbc=vbc1*vbas;
printf("The voltage of line bc in kV is vbc=");
disp(round(vbc));

vca=vca1*vbas;
printf("The voltage of line ca in kV is vca=");
disp(vca);



