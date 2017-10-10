clc
pathname=get_absolute_file_path('72.sce')
filename=pathname+filesep()+'72.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\72.txt')
disp("Dredging operations in a river yield large volumes of sediments whose smallest particle is measured to be coarse sand with a diameter of 4 microns and whose largest particle is coarse sand with a diameter of 1000 microns or 1mm.determine the settling velocity for each size class.Gw=9764 N/m^3;Ssand=2.65;Sclay=1.6;and the viscosity at 30 degree celsius is 0.8*10D-3 N.s/m^2")
disp("Solution:")
disp("(i)For clay particles:")
disp("Assuming reynolds number less than 1")
w1=d1^2*(S1-1)*p/(18*v)//Settling velocity of clay particles
R1=d1*w1/v//reynolds number
disp(R1,"R1=")
disp("Since reynolds number is less than 1,hence")
disp("m/s",w1,"Settling velocity for clay particles")
disp("(ii)For sand particles:")
disp("Assuming reynolds number greater than 1 and equal to 220 Cd=0.7")
w2=sqrt(1.333*d2*p*(S2-1)/(Cd*r))//Settling velocity of clay particles
R2=d2*w2*1e3/v//reynolds number
disp(R2,"R2")
disp("Since the reynolds number is greater than 1")
disp("m/s",w2,"Hence the settling velovity =")
diary(0)
