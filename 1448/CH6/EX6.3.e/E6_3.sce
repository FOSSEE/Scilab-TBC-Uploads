clc
//Initialization of variables
xc=[0 0.20 0.40 0.60 0.80 1]
pc=[0 35 82 142 219 293]
pa=[347 270 185 102 37 0]
//calculations
plot(xc,pc)
plot(xc,pa)
xlabel('Mole fraction xc')
ytitle('Pressure /Torr')
disp('From the graph it is clear that KA=175 torr and KC=165 torr. They are plotted with Raoults law lines')
