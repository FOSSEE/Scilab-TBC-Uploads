pathname=get_absolute_file_path('8_4.sce')
filename=pathname+filesep()+'8_4_data.sci'
exec(filename)
h=0:6000
h1=h/(1)
[m n]=size(h1)
for i=1:n
//Temperature at h(in K)
Tal(i)=Tsl-0.0065*(h1(i));
//Variation in air pressure
pal(i)=1/(10^(h1(i)/19200));
//Density at sea level
Psl=(psl*10^5)/(R*Tsl)
//Density at height h
Pal(i)=(pal(i)*10^5)/(R*Tal(i));
//Air fuel ratio at height h
AFal=AFsl*sqrt(Pal/Psl)
end;
//Plotting Air fuel ratio and Height
plot(h1,AFal)
legend(['Air fuel ratio';'Height']);
xtitle('Air fuel ratio vs Height','Height(in m)','Airfuel ratio')