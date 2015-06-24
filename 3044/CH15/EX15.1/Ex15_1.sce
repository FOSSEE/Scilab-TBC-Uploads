// Variable declaration

x1=[-1,1,-1,1,-1,1,-1,1]   // Solvent
x2=[-1,-1,1,1,-1,-1,1,1]   // Time
x3=[-1,-1,-1,-1,1,1,1,1]   // Temperature
Var = [2048,2813,800,1352,2113,1568,882,1013]      // Variance

// Calculation

Var = log(Var)

solvent = 0
for i  = 1:8
    solvent = solvent + x1(i)*Var(i)
end
solvent = solvent/4

time=0
for i = 1:8
    time = time + x2(i)*Var(i)
end
time = time/4

temp=0
for i  = 1:8
    temp = temp + x3(i)*Var(i)
end
temp = temp/4

st = 0
for i  = 1:8
    st = st + x1(i)*x2(i)*Var(i)
end    
st = st/4

stemp = 0
for i = 1:8
    stemp = stemp + x1(i)*x3(i)*Var(i)
end    
stemp = stemp/4

tt = 0
for i  = 1:8
    tt = tt + x2(i)*x3(i)*Var(i)
end    
tt = tt/4

stt = 0
for i =1:8
    stt = stt + x1(i)*x2(i)*x3(i)*Var(i)
end    
stt = stt/4

x = [0.15,0.30,0.45,0.60,0.90,1.2,1.5]
y = [stt,st,stemp,solvent,(-1)*temp,(-1)*tt,(-1)*time]

// Result
printf ( "solvent : %.3f  time : %.3f ",solvent,time)
printf ( "temp : %.3f  solvent*time : %.3f" ,temp,tt)
printf ( "solvent*temp : %.3f  time*temp : %.2f",st,stemp)
printf ( "solvent*time*temp : %.3f",stt)
plot(x,y,"bo")
title("A Half Normal plot")
