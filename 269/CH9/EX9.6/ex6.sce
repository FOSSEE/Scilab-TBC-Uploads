Syms t,s
disp('The open ckt voltage is found as')
disp('1000/s(s+20)')//fig 9.33
v=1000/(s*(s+20))
disp('The thevenins impedance is')
disp('10(s+10)/(s+20)')//fig 9.33
z=10*(s+10)/(s+20)
disp('The current through R3 is i1')
disp('By thevenins theorem ....')
disp('I1(s)=v/z+z1..........where z1 is the ckt impedance')
disp('I1(s)=1000/s(s^2+40s+300)')
I1=1000/(s*(s^2+40*s+300))
[a]=pfss(1000/(s*(s+10)*(s+30)))
b=ilt(a(1),s,t)
c=ilt(a(2),s,t)
d=ilt(a(3),s,t)
f=b+c+d
disp(f,"The current in time domain by thevenins theorem is ")
