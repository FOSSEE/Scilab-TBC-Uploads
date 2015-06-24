//To specify the best settings for regulation
//Page 474
clc;
clear;

s1=1.75; //As Found in Example 2
VRRpu=1.035; //As R and X are zero, the Settings turn out to produce this

//Parameters of Distribution
K=3.88*(10^-6);
S=3300;
l=10; //length of the line

VDpu=K*S*(l-s1)/2; //Per unit voltage drop

VP=VRRpu-VDpu; //Primary Feeder Voltage

//We Obtain VDs = K*(S3-((S3*s)/l))s+K(S*s/l)s/2;
//We take various values of s and carry out the computation and hence form the table 9-4 given given in the result file

//We Obtain from the voltage drop value for any give point s between the substation and the regulator  station as
//VDs=I(r.cos(theta)+ del sin(theta))s*(1-(s/(2*l)))

//We finally Get VDs = 3.88 * (10^-6) * (3300-(3300s/8.25))s+3.88*(10^-6)*(3300s/8.25)*s/2

//Again for different values of s we get the table 9-5

printf('a)The Best Settings for LDC''s R and X, and for the VRR\n')
printf('The best settings for LDC of the regulator are when settings for both R and X are zero and VRRpu = %g pu V\n',VRRpu)
printf('b)The Voltage Drop occuring in the feeder portion between the regulating point and the end of the feeder is %g pu V\n',VDpu)
printf('The Result Files give the Profiles and relevant information about the solution\n')
