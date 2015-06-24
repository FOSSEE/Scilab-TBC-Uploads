pathname=get_absolute_file_path('23_1.sce')
filename=pathname+filesep()+'23_1data.sci'
exec(filename)
clear
for i=1:6
    I(i)=B(i)*y(i)*y(i);
end
Ixx=sum(I);
for i=1:6
    S(i)=(Mx/Ixx)*y(i);
end
printf("\nσz: %f N/mm^2",S);