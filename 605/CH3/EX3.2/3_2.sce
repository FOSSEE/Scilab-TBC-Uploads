//data
W=2*%pi*10^8   //rad/s
Vp=2.5*10^8     //m/s
Vin=75/(50+75)*3*complex(cos(0),sin(0))     //V
Iin=3/(50+75)*complex(cos(0),sin(0))         //A
//formula and result
printf("\nresult:-")
b=W/Vp
printf("\nB=%.4frad/m",b)
printf("\nV=1.8*cos(2*pi*10^8*t-0.8*pi*z)\ni=0.024*cos(2*pi*10^8*t-0.8*pi*z)")

