pathname=get_absolute_file_path('5_8.sce')
filename=pathname+filesep()+'5_8data.sci'
exec(filename)
L1=[L;L;L;1.41*L;1.41*L;L];
F0=[0 0 -P 0 1.41*P 0];
F1=[-0.71;-0.71;-0.71;1;1;-0.71];
for i=1:6
    X(i)=F0(i)*F1(i)*L1(i);
    X1(i)=F1(i)*F1(i)*L1(i);
end
XBD= -sum(X)/sum(X1);
Fa=[-XBD/1.41;-XBD/1.41;((XBD/1.41)+1);XBD;-(((XBD/1.41)+1))*1.41;-XBD/1.41];
disp("Forces in the Mambrane are:");
printf("\n %f N",Fa)