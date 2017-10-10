
clc;
close;

//M(Magnification Factor) = Size of the image / Size of the Object

M = (8.8 / 150);

//Rounding off to 4 decimal places
M = (round(M*10000))/10000;

//F(Focal Length) = (Distance of the object from the Imagin Sensor * Magnification Facotr)/(Magnification Factor + 1)

F = (700 * M)/(M + 1);

format('v',6);
disp(F,'The required focal length of the lens (in mm) = ')

