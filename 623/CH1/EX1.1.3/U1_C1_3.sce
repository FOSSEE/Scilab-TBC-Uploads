//variable initialization
x=50,y=20,z=10                            //x,y,z cordinates in meters(frame s)
t=5*10^(-8);                             //time in seconds(frame s)
velocity=0.6*3*10^8;                     //velocity of observer in s' frame relative to s in meter/second
c=3*10^8;                                //speed of light in meter/second
Beta=0.6;
Gamma=1/((1-Beta^2)^(1/2));

//calculation of cordinates in s' frame
xdash=Gamma*(x-(velocity*t));             //value of x cordinate in frame s' in meters
ydash=y;                                  //value of y cordinate in frame s' in meters
zdash=z;                                  //value of z cordinate in frame s' in meters
tdash=Gamma*(t-((velocity*x)/(c^2)));     //value of t in frame s' in seconds

printf("\nValue of space time cordinates in frame s`:\n\t x`=%.2f meter\n\t y`=%.0f meter\n\t z`=%.0f meter\n\t t`=%.2e second",xdash,ydash,zdash,tdash);
