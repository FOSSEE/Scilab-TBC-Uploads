clc;
w1=2000; // reading of wattmeter 1 under no load
w2=-400; // reading of wattmeter 2 under no load, since the connections are reversed that is why negative sign
theta=atand((sqrt(3)*(w1-w2))/(w1+w2));
pl=w1+w2;
pf=cosd(theta);
printf('No load losses are %f W\n',pl);
printf('No load power factor is %f lagging',pf);
