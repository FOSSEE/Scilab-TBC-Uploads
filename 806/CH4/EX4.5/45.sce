clc
pathname=get_absolute_file_path('45.sce')
filename=pathname+filesep()+'45.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\45.txt')
disp("Water is flowing through an open channel at a depth of 2 m and a velocity of 3m/s.it then flows through a contracting chute into another channel where the depth is 1 m and the velocity is 10m/s.assuming frictionless flow,determine the difference in the elevation of the channel floors.")
disp("Solution:")
disp("The points 1 and 2 can be selected on the free surface and therefore p1=p2=0")
disp("Therefore by bernoullis equation the difference in the elevation  of the channel is y=")
y=(v2^2)/(2*p)+h2-h1-(v1^2)/(2*p)
disp("m",y)