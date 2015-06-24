//Rates and area//
pathname=get_absolute_file_path('5.08.sce')
filename=pathname+filesep()+'5.08-data.sci'
exec(filename)
//Value of T:
T=log(3/2)/A
x0=1:2;
y0=1:2;
for i=1:2
  for j=1:2
  //For X coordinate:
  X(i)(j)=x0(i)*%e^(A*T)
  //For Y coordinate:
  Y(i)(j)=y0(j)*%e^(-A*T)
  end
end
plot(X,Y)
//Rates of linear deformation in X direction:
Ax=0.3;
//Rate of linear deformation in the y direction:
Ay=-0.3;
//Rate of volume dilation(s^-1):
v=A-A
//Area of abcd:
A1=1;
//Area of a'b'c'd':
A2=(3-3/2)*(4/3-2/3)
printf("\n\nRESULTS\n\n")
printf("\n\nRates of linear deformation in X and Y direction: %.1f /s , %.1f /s\n\n",Ax,Ay)
printf("\n\nRate of volume dilation: %.0f /sec\n\n",v) 
printf("\n\nArea of abcd and a,b,c,d:%.1f m^2, %.1f m^\n\n",A1,A2)
