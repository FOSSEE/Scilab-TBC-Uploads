// Example 5.26
// caption: 1) composite trapizoidal rule, 2) composite simpsons rule with 2,4 ,8 equal sub-intervals,

// I=integral 1/(1+x) in the range [0,1]

deff('[y]=f(x)','y=1/(1+x)')

// when N=2; 
// 1)composite trapizoidal rule
h=1/2;
x=0:h:1;

 IT=comptrapezoidal(x,h,f)
 
 // 2)composite simpsons rule
 
  [I] = simpson13(x,h,f)
  
  
  // when N=4
 // 1)composite trapizoidal rule
h=1/4;
x=0:h:1;

 IT=comptrapezoidal(x,h,f)
 
 // 2)composite simpsons rule
 
  [I] = simpson13(x,h,f)
  
  
  
    // when N=8
 // 1)composite trapizoidal rule
h=1/8;
x=0:h:1;

 IT=comptrapezoidal(x,h,f)
 
 // 2)composite simpsons rule

  [I] = simpson13(x,h,f)