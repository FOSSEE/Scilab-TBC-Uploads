clc
disp("Example 9.8")
printf("\n")

s=%s ;

//From figure 9.13
disp("Z(s)=(2.5+((5*s/3)*(20/s))/(5*s/3+20/s))")
//On solving
z1=poly([12 8 1],'s','coeff')
z2=poly([12 0 1],'s','coeff')
Z=2.5*(z1/z2)
disp(Z,"Z(s)")
//H(s)=I(s)/Z(s)
//Let I(s)=1 the H(s)=1/Z(s)
H=(1/2.5)*(z2/z1)
disp(H,"H(s)")

