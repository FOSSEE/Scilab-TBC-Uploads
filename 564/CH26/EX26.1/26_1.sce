pathname=get_absolute_file_path('26_1.sce')
filename=pathname+filesep()+'26_1data.sci'
exec(filename)
clear
L41=L23*cos(asin((L12-L34)/L23));
t41=t23;
C=[0;cos(asin((L12-L34)/L23));0;1];
S=[1;sin(asin((L12-L34)/L23));1;0];
P=[1 0 0 0 0 -t12*G 0;
   0 1 0 0 t23*G*cos(asin((L12-L34)/L23)) t23*G*sin(asin((L12-L34)/L23)) -t23*G*L12*cos(asin((L12-L34)/L23));
   0 0 1 0 0 t34*G -t34*G*L23*cos(asin((L12-L34)/L23));
   0 0 0 1 -t41*G 0 0;
   0 1 0 -1 0 0 0;
   L12 -L23*sin(asin((L12-L34)/L23)) -L34 0 0 0 0;
   0 L23*L12*cos(asin((L12-L34)/L23)) L34*L23*cos(asin((L12-L34)/L23)) 0 0 0 0];
X=[0;0;0;0;0;Load;Load*x];
q=inv(P)*X;
printf("\nτ12: %f N/mm^2",q(1)/t12);
printf("\nτ23: %f N/mm^2",q(2)/t23);
printf("\nτ34: %f N/mm^2",q(3)/t34);
printf("\nτ41: %f N/mm^2",q(4)/t41);