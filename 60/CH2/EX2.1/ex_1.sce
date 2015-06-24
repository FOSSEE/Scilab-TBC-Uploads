//Example 2.1

// Given   p(6000)=1/3  , p(6001)=-2/3
// From p(x)=a0+a1*x , by substituting x=6000 & x=6001
// we get equations a0+a1*(6000)=1/3 & a0+a1*(6001)=-2/3
//solving the above equations we get
a0=6000.3
a1=-1
deff('[y]=f(x)','y=6000.3-x')
f(6000)
f(6001)
// y=6000.3-x , equation recovers only only the first digit of the 
  // given function values,a loss of four decimal digits 
  // remedy for such loss of significance is the use of SHIFTED POWER FORM
  //p(x)=a0 + a1*(x-c) + a2*(x-c)^2 + .......+an*(x-c)^n
  //if we choose the center c to be 6000
  
  deff('[y]=p(x)','y=0.33333-(x-6000)')
  p(6000)
  p(6001)