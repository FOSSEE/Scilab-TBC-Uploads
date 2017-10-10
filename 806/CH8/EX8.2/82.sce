clc
pathname=get_absolute_file_path('82.sce')
filename=pathname+filesep()+'82.sci'
exec(filename)
diary('C:\users\Bhavesh\desktop\scilab\82.txt')
disp("A submarine moves through water at 30 ft/s.At a point A on the submarine 5 ft above the nose,the velocity of the submarine relative to the water is 50 ft/s.Determine the dynamic-pressure difference between this point and the nose,and determine the difference in total pressure between the two points.")
disp("If the submarine is sationary and the water is movinf past it,The velocity at the nose is zero and the velocity at A is 50ft/s.By selecting the dynamic pressure at infinity as zero")
E=q^2/2+g*hn
p1=p*E//Pressure at nose
p2=p*(E-q1^2/2)//Pressure at point A
P1=p2-p1//Pressure difference at point A and nose
P2=p*(g*hn-g*ha+(qn^2-q1^2)/2)
disp("lb/ft^2",P1,"Hence dynamic pressure difference between point A and nose is=")
disp("lb/ft^2",P2,"Hence total pressure difference between point A and nose is=")
diary(0)
