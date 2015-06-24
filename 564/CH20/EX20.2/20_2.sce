pathname=get_absolute_file_path('20_2.sce')
filename=pathname+filesep()+'20_2data.sci'
exec(filename)
clear
Yc=(2*(B'*D) -B(1,:)*D(1,:))/((2*sum(B))-(B(1,:)+B(9,:)));
Y=D-Yc*ones(9,1);
for i=1:9
    Ixx(i)=B(i)*(Y(i))^2;
end
P=2*sum(Ixx)-Ixx(1)-Ixx(9);
for i=1:9
    Sz(i)=(Mx/P)*Y(i);//σz
end
printf("\nσz: %f N/mm^2",Sz);
