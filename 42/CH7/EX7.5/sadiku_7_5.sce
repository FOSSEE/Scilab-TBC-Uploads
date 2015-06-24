clear;
clc;
i0=-10,i4=10;
H0=.5*i0*-1;// in the positive Y direction
H4=.5*i4*-1*-1;//in the positive Y direction
H=H0+H4;
disp(H, 'H at (1,1,1) =')
H0=.5*i0*-1;//in the positive Y direction
H4=.5*i4*-1;//in the negative Y direction
H=H0+H4;
disp(H,'H at (0,-3,10 =)');