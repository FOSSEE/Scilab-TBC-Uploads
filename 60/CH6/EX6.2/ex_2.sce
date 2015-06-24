//Example 6.2

 deff('[y]=f(x)','y =tan((%pi/4)*x)')
 
 // on std interval -1 <= x <= 1 from pi3
 // this is an odd function f(-x)=f(x)
 n=4
p= (1/(2*(n+1)))*(f(1)-2*f(cos(%pi/(n+1)))+2*f(cos(2*%pi/(n+1)))-2*f(cos(3*%pi/(n+1)))+2*f(cos(4*%pi/(n+1)))-f(-1))
     // 0.00203 <= dist(at infinity)(f,pi4)=p=0.0041

