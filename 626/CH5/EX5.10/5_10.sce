
clear;
clc;
close;
disp("Example 5.10")
p=0.96 //p=p't8/pt8
f=0.02
fAB=0.04

z0=[0.45:0.03:0.65]
gmr=1.3/1.33 //gm=gm/gm' gm=gamma
gm=1.33
gm1=1.3
tlAB=7
tl=6
i=2
for tlAB=7:1:9
    tt=6.5
    g1=[]
gc1=1

    for tt=0.45:0.03:0.65
        A=(1+f+fAB)/(1+f)*((gmr)^(1/2))*1/p*((tlAB/(tl*tt))^(1/2))*((((gm1+1)/2)^((gm1+1)/(2*(gm1-1))))/(((gm+1)/2)^((gm+1)/(2*(gm-1)))))
        g1(gc1)=A
        gc1=gc1+1
    end
    
    plot2d(z0,g1,i)
    xgrid
    i=i+1
    xlabel("Turbine expansion parameter")
    ylabel("A8-AB-ON/A8-AB-OFF")
    title("Nozzle throat area variation with ")
    legend(["tau(AB)=7","tau(AB)=8","tau(AB)=9"])
end 