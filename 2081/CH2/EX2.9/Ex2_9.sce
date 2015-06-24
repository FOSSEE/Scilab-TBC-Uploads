fdm=20
p1=0.01
T1=0.4*(((%e)^(p1^2)) -1)/(fdm*p1)//average fade duration T 

p2=0.1
T2=0.4*(((%e)^(p2^2)) -1)/(fdm*p2)

p3=0.707
T3=0.4*(((%e)^(p3^2)) -1)/(fdm*p3)

p4=1
T4=0.4*(((%e)^(p4^2)) -1)/(fdm*p4)
printf('\naverage fade duration T= %.f microsec for p=0.01',((T1*10^6)-1));
printf('\naverage fade duration T= %.f msec for p=0.01',T2*10^3);
printf('\naverage fade duration T= %.f msec for p=0.01',T3*10^3);
printf('\naverage fade duration T= %.f msec for p=0.01',T4*10^3);
Dr=50
Bp=1/Dr//Bit period
printf('\nBit period=%.f msec',Bp*10^(3));
if Bp>T3 then//for case p=0.707
    
disp(,'Fast rayleigh fading as Bp>T for p=0.707')
else 
disp(,'Slow rayleigh fading as Bp<T for p=0.707')
end

Nl=2.5*fdm*p2*((%e)^(-1*(p2^2)))//avg. no. of level crossings
AvgBER=Nl/Dr
printf('\naverage bit error rate = %.1f',AvgBER)
