// Example 8.6
  
  // Modified Eulers method
  
  deff('[v]=f(x,y)','v=x-(1/y)')
  
 [y,x] = modifiedeuler(1,0,0.2,0.1,f)
