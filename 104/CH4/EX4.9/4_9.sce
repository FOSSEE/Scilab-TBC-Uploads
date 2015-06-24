//incremental encoder
//2 sinusoidal signals
//generates four zero crossings per cycle(zc)
//printwheel has 96 characters on its pheriphery(ch) and encoder has 480 cycles(cyc)
zc=4    
ch=96
cyc=480
zcpr=cyc*zc  //zero crossings per revolution
disp(zcpr,"zero_crossings_per_revolution=")
zcpc=zcpr/ch //zreo crossings per character
disp(zcpc,"zero_crossings_per_character=")
//500khz clock is used
//500 pulses/zero crossing
shaft_speed=500000/500
x=shaft_speed/zcpr
disp(x,"ans=")   //in rev per sec
