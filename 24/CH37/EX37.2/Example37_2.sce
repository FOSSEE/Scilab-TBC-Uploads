//Sample Problem 37-2
printf("**Sample Problem 37-2**\n")
I = [];
for m = 1:3
   theta = (m+.5)*%pi
      I = [I, (sin(theta)/theta)^2]
end
printf("The intensities of secondary maximas relative to intensity of CBF is-\n")
printf("\tI1/Im = %.4f\n", I(1))
printf("\tI2/Im = %.4f\n", I(2))
printf("\tI3/Im = %.4f", I(3))