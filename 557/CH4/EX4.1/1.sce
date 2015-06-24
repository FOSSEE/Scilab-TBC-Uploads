clc;funcprot(0);
//Example 4.1

//Initializing the variables
y = linspace(0,80,9);
x = [0 23 28 31 32 29 22 14 0];
xlabel('Velocity (m/s)');
ylabel('Distance from one side(mm)');
xgrid(1);

//Calculations
plot(x,y,'-*');
mu=[17.5 26.0 29.6 31.9 30.7 25.4 18.1 7.7];
         // mean velocity
disp(mean(mu),"Mean velocity (m/s):");

// the plot is attached as 4.1.png