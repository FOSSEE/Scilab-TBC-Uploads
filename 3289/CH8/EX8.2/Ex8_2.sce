clc

sigmayp=340 //MPa
tauyp=sigmayp/2 //MPa
disp(tauyp,"in MPa is=")
a=0.1 //m
b=0.15 //m
v=0.3 
//pi=4*p0
//sigmatheta=(pi*(a^2+b^2)-2*p0*b^2)/(b^2-a^2)
//sigmatheta=1.7*pi

//sloution a: maxi principal stress theory
sigmatheta=1.7
pi=sigmayp/sigmatheta
disp(pi,"in MPa is= ")

//sloution b: maxi shearing stress theory
//(sigmatheta-sigmar)/2=1.35*pi
pi=tauyp/1.35
disp(pi,"in MPa is= ")

//solution c: energy of distortion theory
sigmar=-1
sigmayp1=sqrt(sigmatheta^2+sigmar^2-sigmatheta*sigmar)//*pi
disp(sigmayp1)
pi=sigmayp/sigmayp1
disp(pi,"in MPa is=")

//solution d: maxi principal strain theory
//(sigmatheta-v*sigmar)/E=sigmayp/E
pi=sigmayp/(sigmatheta-v*sigmar)
disp(pi,"in MPa is= ")

//solution e: octahedral shearing stress theory:
pi=(sqrt(2)*sigmayp)/sqrt((sigmatheta-sigmar)^2+sigmar^2+(-sigmatheta)^2)
disp(pi,"in MPa is= ")






