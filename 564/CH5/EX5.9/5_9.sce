pathname=get_absolute_file_path('5_9.sce')
filename=pathname+filesep()+'5_9data.sci'
exec(filename)
M=2^0.5;
L1=[L;M*L;L;L;M*L;M*L;L];
F0=[P;0;0;0;0;-M*P;0];
F1=[-0.71;0;0;-0.71;1;1;-0.71];
F1R2=[-2;-M;1;1;0;M;0];
for i=1:7
    X(i)=F0(i)*F1(i)*L1(i);
    X1(i)=F0(i)*F1R2(i)*L1(i);
    X2(i)=F1(i)*F1(i)*L1(i);
    X3(i)=F1R2(i)*F1R2(i)*L1(i);
    X4(i)=F1(i)*F1R2(i)*L1(i);
end
X5=[sum(X2) sum(X4);
    sum(X4) sum(X3)];
X6=-[sum(X);sum(X1)]
X7=inv(X5)*X6;
printf("\nX1: %f KN",X7(1,:));
printf("\nR2: %f KN",X7(2,:))
Fa=[X7(1,:)*M-X7(2,:)*(1+(1/M));-X7(2,:)*M;X7(2,:);X7(2,:)-X7(1,:)/M;X7(1,:);-X7(2,:)*(1+(1/M));-X7(1,:)/M]
disp("Forces in the Mambrane are:");
printf("\n %f KN",Fa);