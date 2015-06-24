//liquid level//
pathname=get_absolute_file_path('3.01.sce')
filename=pathname+filesep()+'3.01-data.sci'
exec(filename)
//Tube diameter(in mm):
D=1:25;
D1=D/1000
[m n]=size(D1)
for i=1:n
//Change in liquid level for water(in mm):
dhw(i)=4*STw*cosd(thetaw)/dw/g/D1(i);
//Change in liquid level for mercury(in mm):
dhm(i)=4*STm*cosd(thetam)/dm/g/D1(i);
end;

//Plotting tube daimeter and water level:
plot(D1*1000,dhw,'-o')
//Plotting tube daimeter and mercury level:
plot(D1*1000,dhm,'-*')
legend(['Water';'Mercury']);
xtitle('Liquid level vs Tube diameter','Liquid level(in mm)','Tube diameter(in mm)')
