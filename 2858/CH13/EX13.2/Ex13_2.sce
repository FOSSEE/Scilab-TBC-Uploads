//example 13.2
clc; funcprot(0);
//from figure
deltaS=1/100*1/2*(0.55+0+0.55+1.2+1.2+2+2+3);
disp(deltaS*1000,"total swell in mm");
//partb
D=[5.2, 4.2, 3.2, 2.2, 1.2];
deltaS=[0, 0.00275, 0.0115, 0.0275, 0.0525];
printf("depth(m)\t  total swell (m) \n");
for i=1:5
    printf("%.2f\t            %f \n", D(i),deltaS(i));
end
plot(deltaS*1000,D);
xtitle("depth vs total swell","total swell (m)","depth (m)");

