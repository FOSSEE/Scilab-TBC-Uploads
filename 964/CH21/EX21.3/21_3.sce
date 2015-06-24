clc;
clear;
g=9.8;//m/s^2; acceleration due to gravity
m=68.1;//kg
c=12.5;//kg/sec; drag coefficient
function v=f(t)
    v=g*m*(1-exp(-c*t/m))/c
endfunction
tval=289.43515;//m
a=0;
b=10;
fa=f(a);
fb=f(b);
for i=10:10:20
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=50:50:100
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=100:100:200
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=200:300:500
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=1000:1000:2000
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=2000:3000:5000
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end
for i=5000:5000:10000
    n=i;
    h=(b-a)/n;
    disp(i,"No. of segments=")
    disp(h,"Segment size=")
    j=a+h;
    s=0;
    while j<b
        s=s+f(j);
        j=j+h;
    end
    l=(b-a)*(fa+2*s+fb)/(2*n);
    Et=tval-l;//error
    et=Et*100/tval;//percent relative error
    disp("m",l,"Estimated d=")
    disp(et,"et(%)")
    disp("---------------------------------------------------------")
end


