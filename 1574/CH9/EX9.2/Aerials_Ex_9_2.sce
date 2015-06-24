clc
//Chapter9
//Example9.2, page no 397
//Given
n=10//no of aerial elements
d=0.5//distance in terms of wavelength
Beam_Width=2/(n*d)//
Beam_Width_degrees=Beam_Width*180/%pi
mprintf('Angular beam width is %f degrees\nBeamWidth is %f rad',Beam_Width_degrees,Beam_Width)
