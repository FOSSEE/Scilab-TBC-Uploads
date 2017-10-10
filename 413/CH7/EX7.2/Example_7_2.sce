clc
clear
a=-3
b=1
r=0.618034
function a=f(x)
    a=exp(x)+2-cos(x);
endfunction
xl=a+(1-r)*(b-a)
xr=a+r*(b-a)
FL=f(xl)
FR=f(xr)
while (abs(xr-xl)>0.001)
    T=[xl,xr,FL,FR,a,b,a-b]
    disp(T)
    if(FR >FL)
        b=xr
        xr=xl
        FR=FL
        xl=a+(1-r)*(b-a)
        FL=f(xl)
            else 
        a=xl
        xl=xr
        FL=FR
        xr=a+r*(b-a)
        FR=f(xr)
        end 
   
end