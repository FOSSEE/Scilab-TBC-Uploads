
// determine the height that the water will rise to capillary action in the tube
clc
sigma=0.073 // sigma of pipe
gamma1=9800 // gammma constant
D=2e-3// diameter of the pipe
h=(4*sigma)/(gamma1*D) // height of the water rise in capillary
mprintf('\n height of water rise in capillary is given by %f meter',h)

