clc
// from fig 2.27
w = 2.5 // cm
t = 3.2 // strip thickness in mm
h = 10 // cm
a = t + 0.015*h*10 // back scrap and front scrap in mm
b = t // scrap bridge in mm
W = h + (2*a)/10 // width of strip in cm
W = ceil(W) // cm
s = w + b/10 // length of one piece of stock in cm
L = 240 // length of strip in cm
N = (L-b)/s // number of parts
y = L - (N*s + b/10)  // scrap remaining at the end in mm
printf("\n Value of back scrap = %0.1f mm\n Value of scrap bridge = %0.1f mm " , a , b  )
printf("\n Width of strip = %0.2f cm\n Length of one piece of stock needed to produce one part = %0.2f cm" , W , s)
printf("\n Number of parts = %0.1f blanks\n Scrap remaining at the end = %0.2f mm" , N , y)
// Answers vary due to round off error
