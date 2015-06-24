//Sample Problem 2-2
printf("**Sample Problem 2-2**\n")
//we know that v=dx/dt
xset('window',2)
//velocity v/s time graph
subplot(2,1,1);
xtitle ("VELOCITY v/s TIME","time (sec)","velocity (m/s)");
plot2d(linspace(0,0,10),linspace(0,0,10),style=3,rect=[0,0,10,5]);
//drawing the graph
plot(linspace(0,1,10),linspace(0,0,10),'m');
plot(linspace(1,3,10),linspace(0,4,10),'m');
plot(linspace(3,8,10),linspace(4,4,10),'m');
plot(linspace(8,9,10),linspace(4,0,10),'m');
plot(linspace(9,10,10),linspace(0,0,10),'m');
//dotted lines
plot(linspace(0,3,5),linspace(4,4,5),'--');
plot(linspace(3,3,5),linspace(0,4,5),'--');
plot(linspace(8,8,5),linspace(0,4,5),'--');

//acceleration v/s time graph
subplot(2,1,2);
xtitle("ACCELERATION v/s TIME","time (sec)", "acceleration s(m/s^2)")
plot2d(linspace(0,0,10),linspace(0,0,10),style=0,rect=[0,-5,10,5]);
//drawing the graph
plot(linspace(0,1,5),linspace(0,0,5),'m');
plot(linspace(1,1,5),linspace(0,2,5),'m');
plot(linspace(1,3,5),linspace(2,2,5),'m');
plot(linspace(3,3,5),linspace(2,0,5),'m');
plot(linspace(3,8,5),linspace(0,0,5),'m');
plot(linspace(8,8,5),linspace(0,-4,5),'m');
plot(linspace(8,9,5),linspace(-4,-4,5),'m');
plot(linspace(9,9,5),linspace(-4,0,5),'m');
plot(linspace(9,10,5),linspace(0,0,5),'m');
//dotted lines
plot(linspace(1,1,5),linspace(-5,0,5),'--');
plot(linspace(3,3,5),linspace(-5,0,5),'--');
plot(linspace(8,8,5),linspace(-5,-4,5),'-.');
plot(linspace(9,9,5),linspace(-5,-4,5),'-.');
plot(linspace(0,1,5),linspace(2,2,5),'--');
plot(linspace(0,8,5),linspace(-4,-4,5),'--');
plot(linspace(1,3,5),linspace(0,0,5),'--');
plot(linspace(8,9,5),linspace(0,0,5),'--');