//Streamline flow//
pathname=get_absolute_file_path('06.09.sce')
filename=pathname+filesep()+'06.09-data.sci'
exec(filename)
t=0:5
//Value of sqrt(2gh):
x=sqrt(2*g*h)
//Value of 1/2L*sqrt(2gh):
y=1/2/L*x
[m n]=size(t)
i=1:n;
//Velocity(in m/sec):
V2=x*tanh(y*t(i))
plot(t,V2);
xtitle('Streamline flow from 1 to 2','Time(in s)','V2(in m/sec)')
