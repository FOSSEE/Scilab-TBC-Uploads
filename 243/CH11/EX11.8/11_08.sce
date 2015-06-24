//Example No. 9_01
//Richardson's Extrapolation Technique
//Pg No. 362
clear ;close ;clc ;

x = -0.5:0.25:1.5
h = 0.5 ;
r = 1/2 ;

deff('F = f(x)','F = exp(x)');
deff('D = D(x,h)' ,'D = [ f(x + h) - f(x-h) ]/(2*h) ' );
deff('df = df(x,h,r)','df = [D(x,r*h) - r^2*D(x,h)]/(1-r^2)');

df_05 = df(0.5,0.5,1/2);
disp(df_05,'richardsons technique -  df(0.5) = ',D(0.5,0.25),'D(rh) = D(0.25) = ',D(0.5,0.5),'D(0.5) = ')
dfexact = derivative(f,0.5)
disp(dfexact,'Exact df(0.5) = ')
disp('The result by richardsons technique is much better than other results')

//r = 2
disp(df(0.5,0.5,2),'df(x) = ',D(0.5,2*0.5),'D(rh) = ','for r = 2')