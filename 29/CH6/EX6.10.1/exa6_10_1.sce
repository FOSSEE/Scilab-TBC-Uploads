//Caption:time_response_for_step_function
//example 6.10.1
//page 170
// we have defined parallel and series function which we are going to use here
exec parallel.sce;
exec series.sce;
s=%s;
syms t;
a=4/(s*(s+4))
b=s+1.2
c=s+0.8
d=a/(1+a)
e=parallel(b,c)
f=d/.e;
disp(f,"C(s)/R(s)=");//transfer function
//since input:r(t)=2, so R(s)=2/s;//step_function_of_magnitude_2
g=f*(2/s);
disp(g,"C(s)=");
[A]=pfss(8/(s*(s+2)*(s+6)))
F=ilaplace((8/(s*(s+2)*(s+6))),s,t);
disp(F,"time_response_for_step_function_of_magnitude_2,f(t)=")