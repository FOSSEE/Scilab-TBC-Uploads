pathname=get_absolute_file_path('25_3.sce')
filename=pathname+filesep()+'25_3data.sci'
exec(filename)
clear
s11=1/El;
s22=1/Et;
s12=-vlt/El;
s33=1/Glt;
m=cos(theta),n=sin(theta);
P=[(s11*m^4)+(s22*n^4)+(2*s12*m*m*n*n)+(s33*m*m*n*n) (m*m*n*n)*(s11+s22-s33)+(m^4 +n^4)*s12 0;
   (m*m*n*n)*(s11+s22-s33)+(m^4 +n^4)*s12 (s11*n^4)+(s22*m^4)+(2*s12*m*m*n*n)+(s33*m*m*n*n) 0;
   ((-n*m^3 +m*n^3)*(2*s12 +s33))-(2*s22*m*n^3)+(2*n*s11*m^3) ((n*m^3 -m*n^3)*(2*s12 +s33))+(2*s11*m*n^3)-(2*n*s22*m^3) 0];
X=[S1;S2;0];
E=P*X;
printf("\nεx:  %f ",E(1));
printf("\nεy: %f ",E(2));
printf("\nγxy:%f ",E(3));