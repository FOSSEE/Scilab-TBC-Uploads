clc;
clear;
function y=f(x)
    y=x^10 - 1;
endfunction
x1=0;
x2=1.3;
xt=1;

//using bisection method
disp("BISECTION METHOD:")
xr=(x1+x2)/2;
et=abs(xr-xt)/xt*100;//error
disp(1,"Iteration:")
disp(x1,"xl:")
disp(x2,"xu:")
disp(xr,"xr:")
disp(et,"et(%):")
disp("----------------------------------------")
for i=2:5
    if f(x1)*f(xr)>0 then 
        x1=xr;
        xr=(x1+x2)/2;
        ea=abs(xr-x1)/xr*100;
        et=abs(xr-xt)/xt*100;
    else if f(x1)*f(xr)<0 then
            x2=xr;
            xr=(x1+x2)/2;
            ea=abs(xr-x2)/xr*100;
            et=abs(xr-xt)/xt*100;
        end
    end
    if f(x1)*f(xr)==0 then break;
    end
    disp(i,"Iteration:")
    disp(x1,"xl:")
    disp(x2,"xu:")
    disp(xr,"xr:")
    disp(et,"et(%):")
    disp(ea,"ea(%)")
    disp("----------------------------------------")
end

//using false position method
disp("FALSE POSITION METHOD:")
x1=0;
x2=1.3;
xt=1;
xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1));;
et=abs(xr-xt)/xt*100;//error
disp(1,"Iteration:")
disp(x1,"xl:")
disp(x2,"xu:")
disp(xr,"xr:")
disp(et,"et(%):")
disp("----------------------------------------")
for i=2:5
    if f(x1)*f(xr)>0 then 
        x1=xr;
        xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1));
        ea=abs(xr-x1)/xr*100;
        et=abs(xr-xt)/xt*100;
    
    else if f(x1)*f(xr)<0 then
            x2=xr;
            xr=x1-(f(x1)*(x2-x1))/(f(x2)-f(x1));
            ea=abs(xr-x2)/xr*100;
            et=abs(xr-xt)/xt*100;
        end
    end
    if f(x1)*f(xr)==0 then break;
    end
    disp(i,"Iteration:")
    disp(x1,"xl:")
    disp(x2,"xu:")
    disp(xr,"xr:")
    disp(et,"et(%):")
    disp(ea,"ea(%)")
    disp("----------------------------------------")
end

