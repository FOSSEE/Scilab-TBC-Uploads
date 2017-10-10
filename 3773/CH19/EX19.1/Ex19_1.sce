//Chapter 19: The Fourier Transform Relation between Aperture Distribution and Far-field Pattern
//Example 19-8.1
clc;

//Variable Initialization
gal_ext = 400000        //Extent of galaxy (light-years)
alpha = 0.032           //Extent of galaxy (degrees)
f = 5e9                 //Frequency (Hz)
a = 36e3                //Maximum VLA Spacing (m)
c = 3e8                 //Speed of light (m/s)
wid = 0.03             //Width of image (degrees)
hei = 0.008              //Height of image (degrees)
flux_den = 2.5e-23      //Average flux density (W/m^2)
bw = 1e9                //Bandwidth (Hz)

//Calculations
dist = gal_ext/sin(alpha*%pi/180)    //Distance to the galaxy (light-years)
dist_m = dist*(365*24*3600*c)
wave_lt = c/f       //Wavelength (m)
a_lambda = a/wave_lt    //Spacing in wavelength  (unitless)
pix_size = 51/a_lambda  //Resolution or pixel size (degrees)
pix_size_arc = pix_size*3600    //Pixel size (arc seconds)
area = wid*hei      //Area of image (square degrees)
area_arc = area*(3600**2)    //Area of image (arc seconds)
num_pix = area_arc/pix_size_arc**2  //Number of pixels
rad_pow = flux_den*4*%pi*(dist_m**2)*bw

//Result
disp(dist,"The distance to the galaxy in light years:")
disp(pix_size_arc,"The resolution or pixel size in arc seconds")
disp(num_pix,"The number of pixels is")
disp( rad_pow,"The radio power of the galaxy in W")
