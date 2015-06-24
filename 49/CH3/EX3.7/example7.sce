//Caption:Adequate frequency response conditions for first order instruments
//Example 7
//Page 103
// To measure qi given by 
// qi=sin2t+0.3sin20t
// timeconstant=0.2s
H=1/((0.16+1)^0.5);       //H(jw)=qo/qiK
phi=((atan(-2*0.2))*180)/%pi ;
H2=1/((16+1)^0.5);
phi2=((atan(-20*0.2))*180)/%pi;
printf("sinusoidal transfer function at 2 rad/sec is")
disp(H);
disp(phi)
printf("sinusoidal transfer function at 20rad/sec is")
disp(H2)
disp(phi2)

printf("qo/K can be written as")

printf("      qo=0.93K sin(2t-21.8)+(0.24K) 0.3sin(20t-76)")
//Suppose we consider use of an instrument with timeconstant=0.002s
H=1/((1.6*(10)^(-5)+1)^0.5);
phi=((atan(-2*.002))*180)/%pi ;
H2=1/((1.6*(10^-3)+1)^0.5);
phi2=((atan(-20*0.002))*180)/%pi;
printf("sinusoidal transfer function at 2 rad/sec is")
disp(H);
disp(phi)
printf("sinusoidal transfer function at 20rad/sec is")
disp(H2)
disp(phi2)
printf("qo/K can be written as")

printf("      qo=K sin(2t-0.23)+K 0.3sin(20t-2.3)")
printf("Clearly, this instrument measures the given qi faithfully")
