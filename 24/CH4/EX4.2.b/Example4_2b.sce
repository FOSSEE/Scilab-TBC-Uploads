exec("Example4_2a.sce",-1)
clc

//Sample Problem 4-2b
printf("**Sample Problem 4-2b**\n")
xx = horner(x, [0:2:25])
yy = horner(y, [0:2:25])
xset('window',3)
xtitle ("Y v/s X [t=0sec to t=25sec]","X (m)","Y (m)");
plot2d(linspace(0,0,10),linspace(0,0,10),style=3,rect=[0,-80,80,40]);
//plotting grid
plot(linspace(10,10,5),linspace(-80,40,5),'--')
plot(linspace(20,20,5),linspace(-80,40,5),'--')
plot(linspace(30,30,5),linspace(-80,40,5),'--')
plot(linspace(40,40,5),linspace(-80,40,5),'--')
plot(linspace(50,50,5),linspace(-80,40,5),'--')
plot(linspace(60,60,5),linspace(-80,40,5),'--')
plot(linspace(70,70,5),linspace(-80,40,5),'--')
plot(linspace(80,80,5),linspace(-80,40,5),'--')
plot(linspace(0,80,5),linspace(-60,-60,5),'--')
plot(linspace(0,80,5),linspace(-40,-40,5),'--')
plot(linspace(0,80,5),linspace(-20,-20,5),'--')
plot(linspace(0,80,5),linspace(0,0,5),'--')
plot(linspace(0,80,5),linspace(20,20,5),'--')
plot(linspace(0,80,5),linspace(40,40,5),'--')
//plotting graph
plot(xx,yy,'m.<-')