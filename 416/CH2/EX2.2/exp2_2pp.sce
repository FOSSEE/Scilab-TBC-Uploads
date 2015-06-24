clc
disp("example 2.2")
disp("(a)");
mca=1.1;cla=2.5;mcb=1;clb=3;      //mca=maximum demand of consumera;cla=connected load of a;mcb=maximum load of consumer b;clb=connected load of consumer b
printf("maximum demand of consumer A =%1fkW \n \ndemand factor of consumer A =%2f \n \nmaximum demand of consumer B =%dkW\n \ndemand factor of consumer B = %2f",mca,mca/cla,mcb,mcb/clb)
disp("(b)")
printf("The variation in demand versus time curves are plotted and shown in Fig This is known as chonological load curve.")
A=[100*ones(1,5),1100*ones(1,1),200*ones(1,2),0*ones(1,9),500*ones(1,7)]
B=[0*ones(1,7),300*ones(1,1),1000*ones(1,2),200*ones(1,8),600*ones(1,5),0*ones(1,1)]; //time line of different periods by a and b consumers
t=1:1:24        ;//for 24 hours ploting
ma=max(A);mb=max(B);
subplot(121);       //matrix plotting
plot2d2(t,A,1);
plot2d2(t,B,2);
xtitle("load curves of A and B/ fig 1","time","load watts")
C=A+B;
subplot(122);
plot2d2(t,C,1); 
xtitle("chronological load of group / fig 2","time","load watts")
mg=max(C); //maximum demand of group
disp("(c)")
printf("maximum demand of the group is %dW",mg);
gd=(ma+mb)/mg;
printf("group diversity factor = %3f",gd) ; //group diversity factor is sum of individual maximum consumaer load to the group max load 
disp("(d)")
sa=sum(A)
printf("energy consumed by A during 24 hours is =%dWh",sa)
printf("\nit is seen that energy consumed by A is equal to the area under the chronological load curve of A \n energy consumed by B during 24 hours is")
sb=sum(B);
printf("300x1+100x2+200x8+600x5=%dWh",sb);
disp("(e)");
printf("maximum energy which A could consume in 24hours = %.2fkWh \nmaximum energy which B consume in 24 hours is =%.2fkWh",mca*24,mcb*24 );
disp("(f)");
printf("actual energy/maximum energy");
mca=mca*10^3;mcb=mcb*10^3
aemea=sa/(mca*24)
aemeb=sb/(mcb*24)
printf("\nfor A = %d/%d =%f \nfor b =%d/%d =%f",sa,mca*24,sa/(mca*24),sb,mcb*24,aemeb);