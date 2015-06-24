
 clc
 
//To find force acting on crate

//Given :
//refer to figure 3-8(a) and3-8(b) from page no. 49
// mass
m =360 //kg
// initial velocity of crate
vx1 =62//km/ph
// final velocity of crate
v0x1 = 105 //km/ph
// time elapsed
t =17 //seconds
 
//solution:
//calculating initial velocity in m/s
vx =(62*5)/18 //in m/s
// calculating final velocity in m/s
v0x =(105*5)/18 //in m/s
//calculating acceleration
ax =(vx-v0x)/t //in m/s^2
//calculating force
//applying newton's secong law
Fct =m*ax //in seconds
ax = nearfloat("succ",-0.70)
Fct = nearfloat("pred",-250)

printf ("\n\n Acceleration a = \n\n %.2fm/s^2" ,ax)
printf ("\n\n Force acting on crate Fct =\n\n %.3iN" ,Fct);
