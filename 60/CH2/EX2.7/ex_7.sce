
//Example 2.7

deff('[y]=f(x)','y=(x)^(1/2)')
x0=1
x1=2

//abs(f(x')-p2(x')) <= ((x1-x0)^2)*M/8
//  abs(f(x')-p2(x')) <= 2*((h)^3)/(3*(3)^(1/3))

h=(5*((10)^(-8))*24*((3)^(1/2)))^(1/3)

//h is approximately 0.0128
//h=(x1-x0)/N

N={(x1-x0)/h}
//N is aproximately 79
