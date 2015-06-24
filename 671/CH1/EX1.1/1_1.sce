disp("v1=A cos(w t+p)")
disp("i1=B cos(w1 t+p1)")
disp("i2=C sin(w2 t+p2)")
disp("All values in degrees")
w=input("w=")
p=input("p=")
w1=input("w1=")
p1=input("p1=")
w2=input("w2=")
p2=input("p2=")

if(w==w1)
    lag1=p-p1;
    disp(lag1, "i1 lags v1 by ")
else
    disp("Lag undefined for i1") 
end


if(w==w2)
    lag2=p-p2+90;
    disp(lag2, "i2 lags v1 by ")
else
    disp("Lag undefined for i2")
end