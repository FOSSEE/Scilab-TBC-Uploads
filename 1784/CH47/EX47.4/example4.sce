//Example 4
disp("solution a")
h=(6.63)*10^-34
m=9.11*10^-31
c=3*10^8
delta_h=(h/(m*c))*(1-cos(90))
disp(delta_h,"compton shift in meter")
disp("solution b")
delta=1*10^-10
k=(h*c*delta_h)/(delta*(delta+delta_h))

disp(k,"Kinetic energy in joules")