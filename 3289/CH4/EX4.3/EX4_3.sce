clc

sigmau1=300  //MPa
sigmau2=700  //MPa
b=0.105 //m outer diameter
a=0.100 //m inner diameter

//sigma1==(-sigma2)==tau

sigma3=0

//Mt=J*tau/r= (%pi*(b^2-a^2))/2*b
//Mt=((%pi*(b^4-a^4))/(2*b))*tau         equation a
q=(%pi*(b^4-a^4))/(2*b)

//solution a: max principal stress theory
tau=sigmau1
Mt=q*tau*10^6
disp(Mt,"max principal stress in Nm is= ")

//solution b:max shearing stress theory
// |sigma1-sigma2|=sigmau1
// 2*sigma1==sigmau1==2*tau  or

Mt=q*tau*10^6
disp(Mt,"max shearing stress in Nm is= ")

//solution c:Coulomb- mohr theory
//(tau/sigmau1)-(-tau/sigmau2)=1
tau=1*((sigmau1*sigmau2)/(sigmau1+sigmau2))
disp(tau,"tau in MPa is= ")
Mt=q*tau*10^6
disp(Mt,"Coulomb- mohr in Nm is= ")










