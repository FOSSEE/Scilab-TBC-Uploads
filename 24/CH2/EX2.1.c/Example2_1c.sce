exec('Example2_1a.sce', -1)
clc

//Sample Problem 2-1c
printf("\n**Sample Problem 2-1c**\n")
average_velocity = overall_displacement/delta_t
printf("The average velocity over the whole journey is %f km/h\n", average_velocity)

//from position v/s time graph
xset('window',1)
xtitle ("position v/s time","time(hr)","position(Km)");
//drawing reference lines
plot(linspace(delta_t,delta_t,10),linspace(0,overall_displacement,10),'--.x')
plot(linspace(0,delta_t,10),linspace(overall_displacement,overall_displacement,10),'--.o')
plot(linspace(time,time,10),linspace(0,distance_covered,10),'--')
plot(linspace(0,time,10),linspace(distance_covered,distance_covered,10),'--')
//position v/s time graph
x = linspace(0,time,10);
y = linspace(0,distance_covered,10);
plot(x,y,'r');
//average graph
x = linspace(time,delta_t,10);
y = linspace(distance_covered,overall_displacement,10);
plot(x,y,'r');
//slope of this line will give us the average velocity
x = linspace(0,delta_t,10);
y = linspace(0,overall_displacement,10);
plot(x,y,'m');
legend('$\delta x=10.4 km$','time interval=.62hr')
printf("The average velocity from the graph is %f km/h", 10.4/delta_t)