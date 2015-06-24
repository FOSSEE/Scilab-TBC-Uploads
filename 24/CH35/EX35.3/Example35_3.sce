//Given that
Xo = -20  //in cm
m = -0.25
n = 1.65

//Sample Problem 35-3a
printf("**Sample Problem 35-3a**\n")
printf("The image is real real because m<0 as well as m<1\n")
printf("The mens is converging because magnification is negative for real image\n")
printf("The object is outside the focal length because m<1\n")
printf("The image is on the opposite side of the image from the lens\n")
printf("The image is erect\n")

//Sample Problem 35-3b
printf("\n**Sample Problem 35-3b**\n")
f = Xo*m*Xo/(Xo-m*Xo)
R = (n-1)*2*f
printf("The radius of curvature of the lens is %1.2fcm", f)