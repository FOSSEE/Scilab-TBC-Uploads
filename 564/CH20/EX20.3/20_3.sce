pathname=get_absolute_file_path('20_3.sce')
filename=pathname+filesep()+'20_3data.sci'
exec(filename)
clear
Ixx=4*A*L^2;
B=[A;A;A;A];
Y=[L;L;-L;-L];
q(1)=(-Sy/Ixx)*B(1)*Y(1);
for i=2:4
    q(i)=((-Sy/Ixx)*B(i)*Y(i)) +q(i-1);
end
printf("\nq12: %f N/mm",q(1));
printf("\nq23: %f N/mm",q(2));
printf("\nq34: %f N/mm",q(3));